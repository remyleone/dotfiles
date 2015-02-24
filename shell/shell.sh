# EXPORT.sh

# Couleurs 

# Définition des couleurs

BLACK='\e[0;30m'
BLUEF='\e[0;34m'
BLUEP='\e[1;34m'
GREENF='\e[0;32m'
GREENP='\e[1;32m'
CYANF='\e[0;36m'
CYANP='\e[1;36m'
REDF='\e[0;31m'
REDP='\e[1;31m'
PURPLEF='\e[0;35m'
PURPLEP='\e[1;35m'
BROWNF='\e[0;33m'
BROWNP='\e[1;33m'
GRAYF='\e[0;37m'
GRAYP='\e[1;37m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m' # No Color

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

export MANPAGER="less"
export PAGER="less"
export LESS_TERMCAP_mb=$'\E[01;31m'    # début de blink
export LESS_TERMCAP_md=$'\E[01;31m'    # début de gras
export LESS_TERMCAP_me=$'\E[0m'        # fin
export LESS_TERMCAP_so=$'\E[01;44;33m' # début de la ligne d`état
export LESS_TERMCAP_se=$'\E[0m'        # fin
export LESS_TERMCAP_us=$'\E[01;32m'    # début de souligné
export LESS_TERMCAP_ue=$'\E[0m'        # fin
export PAGER='most'
export EDITOR='vim'
export SVN_EDITOR='vim'
export GIT_EDITOR='vim'
export IRC_CLIENT='irssi'
export VISUAL='vim'
export LANGUAGE='fr_FR.UTF-8'
export LANG='fr_FR.UTF-8'
# ALIAS

# Personal alias 

alias pipo='cat /dev/urandom | hexdump -C | egrep "ca fe"'
alias arise_proxy='export HTTP_PROXY="http://http-proxy.iiens.net:3128"'
alias standard_proxy='export HTTP_PROXY=""'

# General alias 

alias l='ls -lh'
alias rtfm='man'
alias ll='ls -l'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias ls='ls -aF --color=auto'
alias df='df -hT'
alias du='du -hc'
alias ..='cd ..'
alias rd='rmdir'
alias md='mkdir'

# Commandes sympas 

alias reading_test='hdparm -t -T /dev/sda' #Test de lecture
alias dmidecode='sudo dmidecode' #Informations sur la carte mère
alias free='free -m' # RAM
alias cpuinfo='lscpu - cat /proc/cpuinfo' # Processeur
alias vga='lspci | grep VGA'
alias pci_list='lspci'
alias usb_list='lsusb'
alias network_list='ifconfig'
alias space='df -h'
alias swap='swapon -s'
alias virtual_memory='vmstat'
alias ifconfig='ifconfig -a'
alias ss='ss -p'
alias iso_mount='mount $1 /mnt/cdrom -oloop'
alias entropy='cat /proc/sys/kernel/random/entropy_avail'
alias entropy_speed='cat /dev/random | cpipe -ngr -vt > /dev/null'
alias memory='sudo lshw -short -C memory'

# Decodage d'html

alias htmlencode="perl -MHTML::Entities -pe 'encode_entities(\$_)'"
alias htmldecode="perl -MHTML::Entities -pe 'decode_entities(\$_)'"

# Shortcut

alias bat='acpitool -b'

# Folding in vim
# zo : Opening a fold
# zO
alias cp='nocorrect cp'         # no spelling correction on cp
alias mkdir='nocorrect mkdir'   # no spelling correction on mkdir
alias mv='nocorrect mv'         # no spelling correction on mv
alias rm='nocorrect rm'         # no spelling correction on rm
