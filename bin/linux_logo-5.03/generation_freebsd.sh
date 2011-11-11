#/bin/sh

/root/linux_logo-5.03/linux_logo -D /usr/local/scripts/freebsd.logo -F \
"#O Version #V
#N #T, #R RAM
IP `ifconfig -u | awk '/inet / && !/127.0.0.1|10.2.0.1/ {print $2}'`

* #H

\"I came from the end of a bag, but no bag went over me.\"
					-- B. Baggins
"
