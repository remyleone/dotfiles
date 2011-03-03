# Shortcuts
#
# Ctrl + U => Clean all line
# Ctrl + K => Clean [position;end]
# Ctrl + w => Clean the word brefore the position



# General alias 

alias l='ls -alh --color=auto'
alias rtfm='man'
alias ll='ls -l'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias vi='vim'
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

# {{{ typespeed

# }}}

# {{{ urxvt

# }}}

# {{{ mplayer

# }}}

# {{{ wireshark

# }}}

# {{{ gcc

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
alias gcc='gcc -Wall'
alias nm='nm' # Lire les a.out 
