#!/bin/sh
ruser=$1
zfs create home/${ruser}
zfs set quota=200G home/${ruser}
zfs set refquota=200G home/${ruser}
zfs set reservation=50G home/${ruser}
zfs set refreservation=50G home/${ruser}
cp -a /usr/share/skel/* /home/${ruser}/
chown -R ${ruser}:ldapusers /home/${ruser}
cd /home/${ruser}
find . -name 'dot.*' | sed 's/\.\/dot//g' | xargs -I'{}' mv dot'{}' '{}'
