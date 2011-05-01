# ALIAS

# Personal alias 

alias pipo='cat /dev/urandom | hexdump -C | egrep "ca fe"'
alias arise_proxy='export HTTP_PROXY="http://http-proxy.iiens.net:3128"'
alias standard_proxy='export HTTP_PROXY=""'

# General alias 

alias l='ls -alh --color=auto'
alias rtfm='man'
alias ll='ls -l'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias ls='ls -aF'
alias df='df -hT'
alias du='du -hc'

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
alias netstat='netstat -r'
alias memory='sudo lshw -short -C memory'

# Decodage d'html

alias htmlencode="perl -MHTML::Entities -pe 'encode_entities(\$_)'"
alias htmldecode="perl -MHTML::Entities -pe 'decode_entities(\$_)'"

# Shortcut

alias bat='acpitool -b'

# Folding in vim
# zo : Opening a fold
# zO

# {{{ Pacman
alias pacsy="sudo pacman -Sy"               # Sync & Update
alias pacup="sudo pacman -Syu"              # Sync, Update & Upgrade
alias pacdg="sudo pacman -Syuu"             # Sync, Update & Downgrade
alias paclu="pacman -Qu"                    # List upgradeable
alias pacin="sudo pacman -S"                # Install a specific package
alias pacnd="sudo pacman -Sd"               # Install a package but ignore deps
alias pacrm="sudo pacman -Rns"              # Remove a specific package
alias pacrd="sudo pacman -Rd"               # Remove a package but ignore deps
alias pacss="pacman -Ss"                    # Search for a package
alias pacsl="pacman -Qs"                    # Search for a package localy
alias pacsi="pacman -Si"                    # Package info
alias pacqi="pacman -Qi"                    # Package local info
alias pacls="pacman -Ql"                    # List files in a package
alias pacui="pacman -Qm"                    # List localy built packages
alias pacfi="pacman -Qo"                    # Which package file belongs to
alias paccl="sudo pacman -Scc"              # Fully clean the package cache
alias pacdl="sudo pacman -Sw"               # Download a package without installing
alias paclo="pacman -Qdt"                   # List package orphans
alias paclog="pacman -Qc"                   # Package changelog
# }}}

# {{{ Slurpy
alias aurup="slurpy -c -u -d"               # Sync, Update & Download
alias aurlu="slurpy -c -u"                  # Update & List upgradeable
alias aurss="slurpy -c -s"                  # Search for a package
alias aursi="slurpy -c -i"                  # Package info
alias aurgo="slurpy -c -g"                  # Visit AUR page
alias aurdl="slurpy -c -d"                  # Download a package without installing
# }}}

# {{{ cook

# }}}

# {{{ urxvt

# }}}

# {{{ mplayer

# }}}

# {{{ wireshark

# }}}

# {{{ gcc
alias gcc='gcc -Wall'
# }}}

# {{{ Virtualbox

# }}}

# {{{ irssi 

# }}}

# {{{ pdflatex

# }}}

# {{{ svn

# }}}

# {{{ git 

# }}}

# {{{ vim
alias vi='vim'
# }}}

# {{{ autoconf 

# }}}

# {{{ autotools

# }}}

# {{{ automake

# }}}

# {{{ screen

# }}}
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

export MANPAGER=most
export PAGER="less"
export LESS_TERMCAP_mb=$'\E[01;31m'    # début de blink
export LESS_TERMCAP_md=$'\E[01;31m'    # début de gras
export LESS_TERMCAP_me=$'\E[0m'        # fin
export LESS_TERMCAP_so=$'\E[01;44;33m' # début de la ligne d`état
export LESS_TERMCAP_se=$'\E[0m'        # fin
export LESS_TERMCAP_us=$'\E[01;32m'    # début de souligné
export LESS_TERMCAP_ue=$'\E[0m'        # fin
export EDITOR="vim"
export SVN_EDITOR="vim" 
# FUNCTION.sh

function colors()
{
    echo -e "\n${REDP}Code de couleurs:"
    echo -e "${BLUEF}BLUEF ${NC}<--> ${BLUEP}BLUEP"
    echo -e "${GREENF}GREENF ${NC}<--> ${GREENP}GREENP"
    echo -e "${CYANF}CYANF ${NC}<--> ${CYANP}CYANP"
    echo -e "${REDF}REDF ${NC}<--> ${REDP}REDP"
    echo -e "${PURPLEF}PURPLEF ${NC}<--> ${PURPLEP}PURPLEP"
    echo -e "${BROWNF}BROWNF ${NC}<--> ${BROWNP}BROWNP"
    echo -e "${GRAYF}GRAYF ${NC}<--> ${GRAYP}GRAYP"
    echo -e "${YELLOW}YELLOW"
    echo -e "${WHITE}WHITE"
    echo -e "${NC}NC (NO COLOR)"
    echo ""
}

function infos() 
{
    echo -e "\nYou are logged on ${GREENP}$HOST"
    echo -e "\n${REDP}Additionnal information:$NC " ; uname -a
    echo -e "\n${REDP}Users logged on:$NC " ; w -h
    echo -e "\n${REDP}Current date :$NC " ; date
    echo -e "\n${REDP}Machine stats :$NC " ; uptime
    echo -e "\n${REDP}Memory stats :$NC " ; free
}

function extract () {
if [[ -f "$1" ]]; then
    case "$1" in
        *.tbz2 | *.tar.bz2) tar -xvjf  "$1"     ;;
    *.txz | *.tar.xz)   tar -xvJf  "$1"     ;;
*.tgz | *.tar.gz)   tar -xvzf  "$1"     ;;
    *.tar | *.cbt)      tar -xvf   "$1"     ;;
*.zip | *.cbz)      unzip      "$1"     ;;
    *.rar | *.cbr)      unrar x    "$1"     ;;
*.arj)              unarj x    "$1"     ;;
    *.ace)              unace x    "$1"     ;;
*.bz2)              bunzip2    "$1"     ;;
    *.xz)               unxz       "$1"     ;;
*.gz)               gunzip     "$1"     ;;
    *.7z)               7z x       "$1"     ;;
*.Z)                uncompress "$1"     ;;
    *.gpg)       gpg2 -d "$1" | tar -xvzf - ;;
*) echo 'Error: failed to extract "$1"' ;;
    esac
else
    echo 'Error: "$1" is not a valid file for extraction'
fi
}
# PATH.sh

export PATH=$PATH:/var/lib/gems/1.8/bin
