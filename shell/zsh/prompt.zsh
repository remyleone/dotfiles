#--------#
# Prompt #
#--------#

PROMPT='[%{$fg_bold[red]%}%n%{$reset_color%}@%{$fg_bold[green]%}%M:%{$fg_bold[blue]%}%~%{$reset_color%}]$(git_prompt_info)%(!.#.%{$fg_bold[yellow]%}>%{$reset_color%}) '

#-----#
# Git #
#-----#

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}⚡%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"

#---------------#
# stderr in red #
#---------------#

exec 2>>(while read line; do
    print '\e[91m'${(q)line}'\e[0m' > /dev/tty; print -n $'\0'; done &)
