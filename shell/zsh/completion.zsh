# COMPLETION.zsh

## fixme - the load process here seems a bit bizarre

unsetopt menu_complete   # do not autoselect the first completion entry
unsetopt flowcontrol
setopt auto_menu         # show completion menu on succesive tab press
setopt complete_in_word
setopt always_to_end

WORDCHARS=''

autoload -Uz compinit
compinit # -u si il y a des problèmes avec les fichiers qui sont pas les miens

zmodload -i zsh/complist

## case-insensitive (all),partial-word and then substring completion
if [ "x$CASE_SENSITIVE" = "xtrue" ]; then
    zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
    unset CASE_SENSITIVE
else
    zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
fi

zstyle ':completion:*' list-colors ''

# should this be in keybindings?
bindkey -M menuselect '^o' accept-and-infer-next-history

zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"

# Load known hosts file for auto-completion with ssh and scp commands
if [ -f ~/.ssh/known_hosts ]; then
    zstyle ':completion:*' hosts $( sed 's/[, ].*$//' $HOME/.ssh/known_hosts )
    zstyle ':completion:*:*:(ssh|scp):*:*' hosts `sed 's/^\([^ ,]*\).*$/\1/' ~/.ssh/known_hosts`
fi

#  * List of completers to use
zstyle ":completion:*" completer _complete _match _approximate
#  #  * Allow approximate
zstyle ":completion:*:match:*" original only
zstyle ":completion:*:approximate:*" max-errors 1 numeric
#  #  * Selection prompt as menu
zstyle ":completion:*" menu select=1
#  #  * Menu selection for PID completion
zstyle ":completion:*:*:kill:*" menu yes select
zstyle ":completion:*:kill:*" force-list always
zstyle ":completion:*:processes" command "ps -au$USER"
zstyle ":completion:*:*:kill:*:processes" list-colors "=(#b) #([0-9]#)*=0=01;32"
#  #  * Complete with colors
zstyle ":completion:*" list-colors ""

# Don't complete uninteresting users.
zstyle ':completion:*:*:*:users' ignored-patterns adm amanda apache avahi beaglidx bin cacti canna clamav daemon \
                                                  dbus distcache dovecot fax ftp games gdm gkrellmd gopher \
                                                  hacluster haldaemon halt hsqldb ident junkbust ldap lp mail \
                                                  mailman mailnull mldonkey mysql nagios named netdump news \
                                                  nfsnobody nobody nscd ntp nut nx openvpn operator pcap postfix \
                                                  postgres privoxy pulse pvm quagga radvd rpc rpcuser rpm shutdown \
                                                  squid sshd sync uucp vcsa xfs www-data avahi-autoipd

