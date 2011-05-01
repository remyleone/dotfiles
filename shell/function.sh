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
