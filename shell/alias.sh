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

# rails
alias sc='script/console'
alias ss='script/server'
alias sg='script/generate'
alias a='autotest -rails'
alias tlog='tail -f log/development.log'
alias scaffold='script/generate nifty_scaffold'
alias migrate='rake db:migrate db:test:clone'
alias rst='touch tmp/restart.txt'

# Shortcut

alias bat='acpitool -b'

# Folding in vim
# zo : Opening a fold
# zO

alias gcc='gcc -Wall'
alias vi='vim'
alias apt='apt-get install'

# chmod
alias rw-='chmod 600'
alias rwx='chmod 700'
alias r--='chmod 644'
alias r-x='chmod 755'


# For Rails:
alias sc='./script/console'
alias sg='./script/generate'
alias ss='./script/server'
alias sd='./script/destroy'

# For Rails 3:
alias rc='rails console'
alias rg='rails generate'
alias rs='rails server'

# Git 

alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
