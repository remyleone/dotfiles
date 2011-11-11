#!/bin/sh

#################################################
# 
# Configuration globale magique
# (c) KissCool 2008
#
#################################################


################################################
# variables
export PATH=$PATH:/sbin:/usr/local/scripts  # on rajoute les scripts maisons au path
export CLICOLOR=yes                         # option bash
export WITHOUT_X11=yes                      # special FreeBSD
export localetc="/usr/local/etc"            # raccourci tres utile sous FreeBSD
export outils="/usr/local/scripts"          # scripts maisons
export pub="/home/pub"                      # rep publique
export EDITOR="vim"                         # editeur par defaut

#################################################
# aliases
alias cd..='cd ..'
alias cdd='cd'
alias ms='ls'
alias ll='ls -l'
alias la='ls -al'
alias lll='ls -ashp'
alias rm='rm -i'
alias mv='mv -i'
alias uri="ruby -r uri -e 'puts URI.encode(ARGV.shift)'"
alias mpf="mplayer -fs -vf expand=0:-120:0:0"
alias mpau="mplayer -fs -vo vdpau -vc ffmpeg12vdpau,ffh264vdpau,ffwmv3vdpau,ffvc1vdpau, -cache 100000 -hardframedrop"

#################################################
# Couleurs du shell
COLOR_WHITE='\[\033[1;37m\]'
COLOR_LIGHTGRAY='\[\033[0;37m\]'
COLOR_GRAY='\[\033[1;30m\]'
COLOR_BLACK='\[\033[0;30m\]'
COLOR_RED='\[\033[0;31m\]'
COLOR_LIGHTRED='\[\033[1;31m\]'
COLOR_GREEN='\[\033[0;32m\]'
COLOR_LIGHTGREEN='\[\033[1;32m\]'
COLOR_BROWN='\[\033[0;33m\]'
COLOR_YELLOW='\[\033[1;33m\]'
COLOR_BLUE='\[\033[0;34m\]'
COLOR_LIGHTBLUE='\[\033[1;34m\]'
COLOR_PURPLE='\[\033[0;35m\]'
COLOR_PINK='\[\033[1;35m\]'
COLOR_CYAN='\[\033[0;36m\]'
COLOR_LIGHTCYAN='\[\033[1;36m\]'
COLOR_DEFAULT='\[\033[0m\]'


#################################################
# Détection de l'OS/distro
case `uname -s` in
	Linux)
		if [ -e /etc/lsb-release ] ; then
			# si on est chanceux
			. /etc/lsb-release
		else
			# si on ne l'est pas
			DISTRIB_ID=`cat /etc/*release | uniq | awk '{print $1}'`
		fi
		SERVICE_DIR="/etc/init.d"
	    ;;
	FreeBSD)
		DISTRIB_ID="FreeBSD"
		SERVICE_DIR="/etc/rc.d /usr/local/etc/rc.d"
		;;
	*)
		echo "OS non reconnu"
		;;
esac

##################################################
# Commandes inter-OS
#
# permet la personnalisation du prompt
# ainsi que la réutilisation par divers outils
# (service, eix...)

case `echo $DISTRIB_ID | tr "[:upper:]" "[:lower:]"` in
	debian|ubuntu)
		DISTRIB_COLOR=$COLOR_LIGHTGREEN
		;;
	mandriva)
		DISTRIB_COLOR=$COLOR_LIGHTBLUE
		;;
	fedora)
		DISTRIB_COLOR=$COLOR_LIGHTBLUE
		;;
	gentoo)
		DISTRIB_COLOR=$COLOR_PINK
		;;
	freebsd)
		DISTRIB_COLOR=$COLOR_LIGHTRED
		;;
	*)
		DISTRIB_COLOR=$COLOR_GRAY
		;;
esac


#################################################
# Définition du prompt

# utilisateur root ou normal ?
if [ `id -u` -eq 0 ] ; then
    USER_COLOR=$COLOR_RED
else
    USER_COLOR=$COLOR_GREEN
fi


# valide uniqument si on est sous bash
echo $SHELL | grep -iq bash
if [ $? -eq 0 ] ; then
    export PS1="${USER_COLOR}\u${COLOR_LIGHTGRAY}@${DISTRIB_COLOR}\h${COLOR_YELLOW} \W \$${COLOR_DEFAULT} "
fi

#################################################
# Défini la bonne locale sous FreeBSD

[ $DISTRIB_ID = "FreeBSD" ] && export LANG=en_US.UTF-8
