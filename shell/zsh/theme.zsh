# theme.zsh

setopt prompt_subst
autoload colors; colors

if [[ $ZSH_VERSION > 4.3.6 ]]; then
    autoload -Uz vcs_info
fi

# set some colors
for COLOR in RED GREEN YELLOW WHITE BLACK CYAN; do
    eval PR_$COLOR='%{$fg[${(L)COLOR}]%}'
    eval PR_BRIGHT_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
PR_RESET="%{${reset_color}%}";

# set formats
# %b - branchname
# %u - unstagedstr (see below)
# %c - stangedstr (see below)
# %a - action (e.g. rebase-i)
# %R - repository path
# %S - path in the repository
FMT_BRANCH="${PR_BRIGHT_CYAN}%b%u${PR_RESET}" # e.g. master¹²
FMT_ACTION="(${PR_CYAN}%a${PR_RESET}%)"   # e.g. (rebase-i)
FMT_PATH="%R${PR_YELLOW}/%S"              # e.g. ~/repo/subdir

# check-for-changes can be really slow.
# you should disable it, if you work with large repositories
zstyle ':vcs_info:*:prompt:*' check-for-changes true
zstyle ':vcs_info:*:prompt:*' unstagedstr '¹'  # display ¹ if there are unstaged changes
zstyle ':vcs_info:*:prompt:*' stagedstr '²'    # display ² if there are staged changes
zstyle ':vcs_info:*:prompt:*' actionformats "${FMT_BRANCH}${FMT_ACTION}" "${FMT_PATH}"
zstyle ':vcs_info:*:prompt:*' formats       "[${FMT_BRANCH}]"            "${FMT_PATH}"
zstyle ':vcs_info:*:prompt:*' nvcsformats   ""                             "%~"


function lprompt {
    local color1=$1
    local color2=$2

    # Make the prompt red regardless of the colour if we're root
    if test `whoami` = "root"; then
        color1=$PR_BRIGHT_RED
    fi

    # Show the user if we're sshd in from somwhere
    # if [[ -n $SSH_CONNECTION ]]; then
        # PROMPT="${PR_RESET}${color1}%n@%m:${color2}%~%#${PR_RESET} "
    # else
        PROMPT="${PR_RESET}${color1}%m:${color2}%~%#${PR_RESET} "
    # fi
}

function rprompt {
    local git='$vcs_info_msg_0_'
    RPROMPT="${PR_BRIGHT_RED}%(?..ツ)%}${PR_RESET} ${PR_RESET}${git}${PR_RESET} %T"
}

lprompt $(eval echo \$$(echo PR_BRIGHT_$(echo ${PROMPT_COLOUR:-CYAN}))) $PR_WHITE
rprompt
