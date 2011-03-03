# The following lines were added by compinstall
zstyle :compinstall filename '/home/sieben/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify
#bindkey -v
# End of lines configured by zsh-newuser-install

#eval `dircolors /etc/DIR_COLORS`

# Environment variables
export EDITOR="/usr/bin/vim"
export VISUAL="/usr/bin/vim"
export PAGER="/usr/bin/most"

# Aliases
alias ls="ls -l --color=auto"
alias grep="grep --color=auto"

#alias onescreen="xrandr --size 1440x900"
#alias twoscreens="xrandr --size 2720x1024"

# Shell options
setopt hist_ignore_all_dups
setopt hist_ignore_space

#------
# Keybindings
#------

bindkey "\eOF" end-of-line
bindkey "\eOH" beginning-of-line

#PATH

path+=(/var/lib/gems/1.8/bin)

# Informations  /usr/local/cuda

path+=(/usr/local/cuda/bin)
LD_LIBRARY_PATH+=(/usr/local/cuda/lib64)
LD_LIBRARY_PATH+=(/usr/local/cuda/lib)

# Directory in the title bar
chpwd() {
  [[ -t 1 ]] || return
  case $TERM in
    sun-cmd) print -Pn "\e]l%n@%m:%~\e\\"
      ;;
    *xterm*|rxvt*|(dt|k|E)term|screen*) print -Pn "\e]2;%n@%m:%~\a"
      ;;
  esac
}

# colorize stderr in red
 exec 2>>(while read line; do
 	print '\e[91m'${(q)line}'\e[0m' > /dev/tty; print -n $'\0'; done &)

# prompt de kikoololz
# inspiré de http://aperiodic.net/phil/prompt

PROMPT_COLOR='RED';

#function precmd {

 #   local TERMWIDTH
  #  (( TERMWIDTH = ${COLUMNS} - 1 ))

    ###
    # Get APM info.

   # if which ibam > /dev/null; then
#	PR_APM_RESULT=`ibam --percentbattery`
 #   elif which apm > /dev/null; then
#	PR_APM_RESULT=`apm`
  #   fi
    
    ###
    # APM detection
    
 #   if which ibam > /dev/null; then
#	PR_PERCENT="${${PR_APM_RESULT[(f)1]}[(w)-2]}"
#	PR_TIME="${${PR_APM_RESULT[(f)3]}[(w)-1]}"
#	PR_TIME=$PR_TIME[1,-4]

#	PR_BATTCOLOR=""

#	if [[ $PR_PERCENT -lt 100 ]]
#	then
#		if [[ $PR_PERCENT -ge 40 ]]; then PR_BATTCOLOR=$PR_LIGHT_GREEN;
#		elif [[ ( $PR_PERCENT -ge 20 ) && ( $PR_PERCENT -le 40 ) ]]; then PR_BATTCOLOR=$PR_LIGHT_YELLOW;
#		elif [[ $PR_PERCENT -le 20 ]]; then PR_BATTCOLOR=$PR_LIGHT_RED;
#		fi

#		PR_APM="%{$PR_BATTCOLOR%}$PR_PERCENT%%-$PR_TIME"
#		PR_APM_NOCOLOR=${:-$PR_PERCENT%%-$PR_TIME};
#	else
#		PR_APM="%{$PR_LIGHT_BLUE%}100%%"
#		PR_APM_NOCOLOR='100%%'
#	fi

 #   elif which apm > /dev/null; then
#	PR_APM='$PR_RED${PR_APM_RESULT[(w)5,(w)6]/\% /%%}'
 #   else
#	PR_APM=''
#	PR_APM_NOCOLOR=''
    #fi
  
    ###
    # Truncate the path if it's too long.
    
   # PR_FILLBAR=""
   # PR_PWDLEN=""
    
   # local promptsize=${#${(%):--(%n@%m)()($PR_APM_NOCOLOR)--}}
  #  local pwdsize=${#${(%):-%~}}
    
 #   if [[ "$promptsize + $pwdsize" -gt $TERMWIDTH ]]; then
#	    ((PR_PWDLEN=$TERMWIDTH - $promptsize))
 #   else
#	PR_FILLBAR="\${(l.(($TERMWIDTH - ($promptsize + $pwdsize)))..${PR_HBAR}.)}"
 #   fi
#}


setopt extended_glob
preexec () {
    if [[ "$TERM" == "screen" ]]; then
	local CMD=${1[(wr)^(*=*|sudo|-*)]}
	echo -n "\ek$CMD\e\\"
    fi
}

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

function print_colors()
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

function infos() # avoir les infos dla session ouverte et pc
{
echo -e "\nYou are logged on ${BLUEP}$HOSTNAME"
echo -e "\n${REDP}Additionnal information:$NC " ; uname -a
echo -e "\n${REDP}Users logged on:$NC " ; w -h
echo -e "\n${REDP}Current date :$NC " ; date
echo -e "\n${REDP}Machine stats :$NC " ; uptime
echo -e "\n${REDP}Memory stats :$NC " ; free
my_ip 2>&- ;
echo -e "\n${REDP}Local IP Address :$NC" ; echo ${MY_IP:-"Not connected"}
echo -e "\n${REDP}ISP Address :$NC" ; echo ${MY_ISP:-"Not connected"}
echo ""
}

# Message de bienvenue
echo -e "${REDP}Welcome Sieben. You are logged on $HOST."
echo ""

setprompt () {
    ###
    # Need this so the prompt will work.

    setopt prompt_subst


    ###
    # See if we can use colors.

    autoload colors zsh/terminfo
    if [[ "$terminfo[colors]" -ge 8 ]]; then
	colors
    fi
    for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
	eval PR_LIGHT_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
	eval PR_$color='%{$terminfo[sgr0]$fg[${(L)color}]%}'
	(( count = $count + 1 ))
    done
    PR_NO_COLOUR="%{$terminfo[sgr0]%}"
    
    eval PR_COLOR='%{$terminfo[sgr0]$fg[${(L)PROMPT_COLOR}]%}'
    eval PR_LIGHT_COLOR='%{$terminfo[bold]$fg[${(L)PROMPT_COLOR}]%}'

    ###
    # See if we can use extended characters to look nicer.
    
    typeset -A altchar
    set -A altchar ${(s..)terminfo[acsc]}
    PR_SET_CHARSET="%{$terminfo[enacs]%}"
    PR_SHIFT_IN="%{$terminfo[smacs]%}"
    PR_SHIFT_OUT="%{$terminfo[rmacs]%}"
    PR_HBAR=${altchar[q]:--}
    PR_ULCORNER=${altchar[l]:--}
    PR_LLCORNER=${altchar[m]:--}
    PR_LRCORNER=${altchar[j]:--}
    PR_URCORNER=${altchar[k]:--}

    
    ###
    # Decide if we need to set titlebar text.
    
    case $TERM in
	xterm*)
	    PR_TITLEBAR=$'%{\e]0;%(!.-=*[ROOT]*=- | .)%n@%m:%~ | ${COLUMNS}x${LINES} | %y\a%}'
	    ;;
	screen)
	    PR_TITLEBAR=$'%{\e_screen \005 (\005t) | %(!.-=[ROOT]=- | .)%n@%m:%~ | ${COLUMNS}x${LINES} | %y\e\\%}'
	    ;;
	*)
	    PR_TITLEBAR=''
	    ;;
    esac
    
    
    ###
    # Decide whether to set a screen title
    if [[ "$TERM" == "screen" ]]; then
	PR_STITLE=$'%{\ekzsh\e\\%}'
    else
	PR_STITLE=''
    fi
    
    ###
    # Finally, the prompt.

    PROMPT='$PR_SET_CHARSET$PR_STITLE${(e)PR_TITLEBAR}\
$PR_COLOR$PR_SHIFT_IN$PR_ULCORNER$PR_SHIFT_OUT(\
$PR_LIGHT_YELLOW%(!.%SROOT%s.%n)$PR_COLOR@$PR_LIGHT_COLOR%m\
$PR_COLOR)(\
$PR_BLUE%$PR_PWDLEN<...<%~%<<\
$PR_COLOR)\
$PR_SHIFT_IN$PR_HBAR${(e)PR_FILLBAR}$PR_SHIFT_OUT(\
$PR_APM$PR_COLOR)\
$PR_SHIFT_IN$PR_URCORNER$PR_SHIFT_OUT\

$PR_COLOR$PR_SHIFT_IN$PR_LLCORNER$PR_SHIFT_OUT(\
%(?..$PR_LIGHT_RED%?$PR_RED!)\
$PR_YELLOW%D{%H:%M}$PR_COLOR)\
$PR_LIGHT_CYAN%#$PR_COLOR$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
$PR_NO_COLOUR '

    RPROMPT=' $PR_COLOR$PR_SHIFT_IN$PR_LRCORNER$PR_SHIFT_OUT$PR_NO_COLOUR'

    PS2='$PR_COLOR$PR_SHIFT_IN$PR_HBAR($PR_SHIFT_OUT\
$PR_LIGHT_GREEN%_$PR_COLOR)$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
$PR_NO_COLOUR '
}

setprompt


# Mes alias 

source ~/.alias
