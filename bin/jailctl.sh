#!/bin/sh
# (c) Philippe Bayle
# 2011

export zpool="home"
export version="8.2-RELEASE"
export arch="amd64"
export network_device="lo1"
export initpwd=`pwd`





init() {
	zfs create $zpool/jails
	zfs set snapdir=visible $zpool/jails

	zfs create $zpool/jails/src
	cd /$zpool/jails/src/
	mkdir base manpages
	cd base
	ftp ftp.freebsd.org:/pub/FreeBSD/releases/$arch/$version/base/\*
	cd ../manpages
	ftp ftp.freebsd.org:/pub/FreeBSD/releases/$arch/$version/manpages/\*

	cd $initpwd
	echo "/sbin/ifconfig $network_device create" > /etc/start_if.$network_device
}

list() {
	ls -1 /$zpool/jails/ | grep -v "^src$"
}

create() {
	name=$1

	zfs create $zpool/jails/$name
	cd /$zpool/jails/src/base
	export DESTDIR=/$zpool/jails/$name
	echo y | sh install.sh
	cd /$zpool/jails/src/manpages
	echo y | sh install.sh
	export DESTDIR=""

	mkdir -p /$zpool/jails/$name/usr/ports
	touch /$zpool/jails/$name/etc/fstab
	cp /etc/make.conf /$zpool/jails/$name/etc/
	cp /etc/resolv.conf /$zpool/jails/$name/etc
	cp /usr/local/scripts/dot.cshrc /$zpool/jails/$name/root/.cshrc
	cp /usr/share/zoneinfo/Europe/Paris /$zpool/jails/$name/etc/localtime
	echo 'defaultrouter="192.168.0.1"' > /$zpool/jails/$name/etc/rc.conf

	cd $initpwd
}

start() {
	name=$1	
	end_ip=$2

	mount_nullfs /usr/ports /$zpool/jails/$name/usr/ports
	mount -t devfs none /$zpool/jails/$name/dev
	ifconfig $network_device alias 192.168.0.$end_ip
	jail -c persist name=$name path=/$zpool/jails/$name host.hostname=$name.jails ip4.addr=192.168.0.$end_ip allow.sysvipc allow.raw_sockets allow.socket_af allow.mount
}

#jail build pkg_add -r portmaster

#portmaster -dBg `cat /root/packages`

stop() {
	name=$1
	jail -r $name
	umount /$zpool/jails/$name/usr/ports
	/$zpool/jails/$name/dev
}


if [ "$#" -eq 0 ] || [ "$1" = "-h"  ] || [ "$1" = "--help" ]
then
	echo "Usage:"
	echo ""
	echo "$0 [-h] | command "
	echo ""
	echo "  -h              help"
	echo ""
	echo "commands:	"
	echo "  * init			initialize a jail farm"
	echo "  * list			list available jails"
	echo "  * create <jailname>		create a jail named <jailname> from scratch"
	echo "  * destroy <jailname>		destroy the jail named <jailname>"
	echo "  * start <jailname> <end_ip>	start the jail with the specified end of IP number"
	echo "  * stop <jailname>		stop the jail"
	echo ""
	exit
fi


#--------------------
# argument parsing
#--------------------

case $1 in
	init)
		init
		;;
	list)
		list
		;;
	create)
		shift
		create $@
		;;
	destroy)
		shift
		destroy $@
		;;
	start)
		shift
		start $@
		;;
	stop)
		shift
		stop $@
		;;
	*)
		echo "invalid command : $1"
		;;
esac


