# Shortcuts
#
# Ctrl + U => Clean all line
# Ctrl + K => Clean [position;end]
# Ctrl + w => Clean the word brefore the position
# Ctrl + a => Go to begin of life
# Ctrl + e => Go to End of line
# Ctrl + p => Previous command
# Ctrl + b => Move back from a char
# Ctrl + f => Move forward a char
# Ctrl + k => Delete to EOL
# Ctrl + n => Next command
# Ctrl + r => Search in previous command (begin research mode)
# Ctrl + s => Search in next command
# Ctrl + o => Do command researched
# Ctrl + l => Clean screen
# Ctrl + u => Clean text before cursor + copy it
# Ctrl + k => Clean text after cursor + copy it
# Ctrl + w => Clean the word before the cursor + copy it
# Ctrl + y => Paste the content  of the cursor (yank)
# Ctrl + d => Terminate the current buffer
# Ctrl + c => Cancel a process
# Ctrl + z => Background (fg to bring back)

# Alt + f => move forward one word
# Alt + b => move background one word
# Alt + del => cuts the word before the cursor
# Alt + d => Cut the word after the cursor
# Alt + u => UPPER every char from cursor to the end of the cursor word
# Alt + l => lower ""
# Alt + c => up a char and move to the end of the word
# Alt + r => cancel the changes on the current line
# Alt + < => Move to the first line in the history
# Alt + > => Move to the last line in the history
# Alt + ? => Show current completion list
# Alt + * => Insert all possible completions
# Alt + / => Attempt to complete filename
# Alt + . => Yank last argument to previous command
# Alt + t => Move words around
# Alt + Back-Space => Delete backward from cursor

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
alias pstree='pstree'
alias w='w'
alias vmstat='vmstat'
alias gdbserver='gdbserver'
alias xxd='xxd'
alias nslookup='nslookup' #permet d'avoir des infos sur un site 
alias netcat='nc' # permet de faire ce que l'on veut avec des paquets TCP et UDP
alias tcpdump='tcpdump'
alias route='route' #permet de voir les routes du système
alias ifconfig='ifconfig -a'
#alias del_doublons='awk '!x[$0]++''
alias ss='ss -p'
alias iso_mount='mount $1 /mnt/cdrom -oloop'
alias seq='seq'
alias wc='wc'
alias hexdump='hexdump'
alias source='source'
alias entropy='cat /proc/sys/kernel/random/entropy_avail'
alias entropy_speed='cat /dev/random | cpipe -ngr -vt > /dev/null'
alias netstat='netstat -r'
alias tsort='tsort'
alias memory='sudo lshw -short -C memory'

# Decodage d'html

alias htmlencode="perl -MHTML::Entities -pe 'encode_entities(\$_)'"
alias htmldecode="perl -MHTML::Entities -pe 'decode_entities(\$_)'"

# Section du manuel intéressantes

# man hier : Contient une description de l'organisation de l'arborescence Unix
# man squid : Pour monter un proxy
# man bashdb : Debugger pour bash
# man logger : syslog
# man mail : mail tools
# man xargs : Ligne de commandes
# man 7 signal : Liste des signaux
# man rename : Perl tool for rename
# man pr : Mettre en forme pour l'impression
# $> !! : Commande précédente
# man regex : POSIX regular expression 
# man tr : Eliminer ou convertir des lettres d'un texte
# man fmt : Formatter un texte 
# man wodim : Graveur en ligne de commande 
# man mktemp : Fichier temporaire (Stocker des mots de passe sensibles)
# man setuid : Id des processus 
# man builtins : Fonction de base de bash
# man nohup : Mettre un process comme indépendant du terminal
# man getopt(s) : Prendre les arguments de la ligne de commande 
# man find : Trouver des fichiers
# man locate : Trouver des fichiers
# man join : Joindre des fichiers triés
# man jobs : Liste des jobs en cours (A voir de plus près)
# man iconv : Convertir l'encodage d'un fichier
# man hostname : Nom de l'hôte
# man fuser : Processus utilisant un fichier
# man fgrep : grep -F
# man egrep : grep -E
# man dd : Copie generique
# man crontab : Tache planifiée
# man bg/fg : Mettre en fond un processus (lien avec jobs)
# man basename : Nom du fichier sans l'extension
# man arch : Affiche l'architecture de la machine
# man uptime : Uptime
# man uniq : Ote les lignes dupliquées
# man uname : Informations systèmes
# man mkfifo : Tube nommés
# man mknod : Fichiers spéciaux
# man nice : Courtoisie d'un processus 
# man patch : Modification de fichiers existants
# man rev : Inverser les lignes d'un fichier
# man sort : Trier les lignes d'un fichier texte
# man split : Decouper un fichier en plusieurs lignes
# man stty : Configuration du terminal
# man ipcs : Utilisation des ressources IPC System V
# man ldconfig : Valider les bibliothèques dynamiques
# man dmesg : Message du kernel
# man init : Niveau d'execution (init 0 -> shutdown)
# man ps : Processus
# man renice : Changer la courtoisie d'un processus
# man killall : Envoyer un signal a tous les processus de meme nom
# man ifconfig : Configuration du reseau
# man route : Gestion de la table de routage
# man socklist : Liste des sockets actives
# man netstat : Statistiques reseau
# man arp : Gestion de la table ARP du noyau
# man traceroute : Itineraire d'un paquet
# man objdump : Information sur un fichier objet
# man tcpdump : Information sur le reseau


#env: run a command (useful in scripts)
#cut and paste and join: data manipulation
#pr: format text
#bc: calculator
#nc: network debugging and data transfer
#dd: moving data between files
#file: identify type of a file
#stat: file info
#tac: print files in reverse
#shuf: random selection of lines from a file
#hd and bvi: dump or edit binary files
#strings: extract text from binary files
#tr: character translation or manipulation
#iconv or uconv: conversion for text encodings
#split and csplit: splitting files
#ldd: dynamic library info
#nm: symbols from object files
#ab: benchrmarking web servers
#strace: system call debugging
#mtr: better traceroute for network debugging
#cssh: visual concurrent shell
#lsof: process file descriptor and socket info
#dstat and htop: improved system stats monitors
#last: login history
#sar: historic system stats
#iftop or nethogs: network utilization by socket or process
#dmesg: boot and system error messages

##############################################
# Gestion des modules Kernel
##############################################
#
# man lsmod : Liste des modules employés
# man modinfo : Information sur un fichier module
# man insmod : Insertion d'un module dans le noyau
# man rmmod : Suppression d'un fichier dans le noyau
# man depmod : Verification des dependances
# man modprobe : Chargement gérant les dépendances

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

# Personal alias 

alias perso="ssh leone2009@perso.iiens.net"
alias pipo='cat /dev/urandom | hexdump -C | egrep "ca fe"'
alias arise_proxy='export HTTP_PROXY="http://http-proxy.iiens.net:3128"'
alias standard_proxy='export HTTP_PROXY=""'
#alias onescreen="xrandr --size 1440x900"
#alias twoscreens="xrandr --size 2720x1024"

# Alias pour les vrais

alias sysctl='sysctl' # Paramètres du noyau (possible de les reconfigurer a chaud)
alias nm='nm' # Lire les a.out 
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
export PATH=$PATH:/var/lib/gems/1.8/bin
