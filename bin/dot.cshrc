# $FreeBSD: src/etc/root/dot.cshrc,v 1.30.10.1.2.1 2009/10/25 01:10:29 kensmith Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA
alias zc	'awk "BEGIN{ print \!* }" ' # cli calculator - zc 5*5
alias wa	'tail -f /var/log/lighttpd.access.log | awk '\''$7 !~ /.png|.gif|.js|.css|.jpg|.ico|check_bal.php|server-status/  {print $1, $7}'\'''
alias jk	'jexec `cat /var/run/jail_\!:1.id` \!:2*'
alias pkg_jail  portmaster -PP --local-packagedir=/usr/ports/packages --packages-local --index-only

# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin $HOME/bin /usr/local/scripts/)
set autolist

setenv	EDITOR	vim
setenv	PAGER	more
setenv	BLOCKSIZE	K
setenv	CLICOLOR	yes
setenv  PKG_PATH        /usr/ports/packages/Latest
# used by pkg_upgrade
setenv  PACKAGESITE	/usr/ports/packages/Latest
# used by portmaster
setenv	INDEXDIR	/usr/ports/packages/

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "%{\033[33m%}`/bin/hostname -s` %{\033[32m%}%c%{\033[0m%}# "
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif
