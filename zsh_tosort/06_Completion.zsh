# Activate completion.
autoload -Uz compinit && compinit -u

# Force rehash to have completion picking up new commands in $path.
autoload _force_rehash && zstyle ':completion:::::' completer _force_rehash \
                                                              _complete \
                                                              _ignored \
                                                              _gnu_generic \
                                                              _approximate

# Default to parsing "--help" for command that have completion functions.
zstyle ':completion:*' completer _complete \
                                 _ignored \
                                 _gnu_generic \
                                 _approximate

# Speed up completion by avoiding partial globs.
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' accept-exact-dirs true

# Separate directories from files.
zstyle ':completion:*' list-dirs-first true

# Turn on menu selection only when selections do not fit on screen.
zstyle ':completion:*' menu true=long select=long

# Separate matches into groups.
zstyle ':completion:*:matches' group yes
zstyle ':completion:*' group-name ''

# Always use the most verbose completion.
zstyle ':completion:*' verbose true

# Describe options.
zstyle ':completion:*:options' description yes

# Completion presentation styles.
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:descriptions' format $'\e[1m -- %d --\e[22m'
zstyle ':completion:*:messages' format $'\e[1m -- %d --\e[22m'
zstyle ':completion:*:warnings' format $'\e[1m -- No matches found --\e[22m'

# Ignore hidden files by default
zstyle ':completion:*:(all-|other-|)files' ignored-patterns '(.|*/.)*'
zstyle ':completion:*:(local-|)directories' ignored-patterns '(.|*/.)*'
zstyle ':completion:*:cd:*' ignored-patterns '(.|*/.)*'

# Do not complete completion functions/widgets.
zstyle ':completion:*:functions' ignored-patterns '_*'


# Show ignored patterns if needed.
zstyle '*' single-ignored show

# cd style.
zstyle ':completion:*:cd:*' ignore-parents parent pwd # cd never selects the parent directory (e.g.: cd ../<TAB>)
zstyle ':completion:*:*:cd:*' tag-order local-directories path-directories

# kill style.
zstyle ':completion:*:*:kill:*' command 'ps -a -w -w -u $USER -o pid,cmd --sort=-pid'
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=39=32"

# man style.
zstyle ':completion:*:manuals' separate-sections true

# rm/cp/mv style.
zstyle ':completion:*:(rm|mv|cp):*' ignore-line yes

# Hostnames completion, using ~/.ssh/config, ~/.ssh/known_hosts and /etc/hosts.
_hosts=()
[[ -r ~/.ssh/config ]] && _hosts+=(${${${(@M)${(f)"$(<~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
[[ -r ~/.ssh/known_hosts ]] && _hosts+=(${${${${(f)"$(<~/.ssh/known_hosts)"}:#[\|]*}%%\ *}%%,*})
[[ -r /etc/hosts ]] && _hosts+=(${(s: :)${(ps:\t:)${${(f)~~"$(</etc/hosts)"}%%\#*}##[:blank:]#[^[:blank:]]#}})
zstyle ':completion:*:hosts' hosts $_hosts

# Completion functions development.
bindkey "^Xh" _complete_help
