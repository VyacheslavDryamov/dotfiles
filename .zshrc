autoload -U compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
setopt HIST_IGNORE_DUPS

function zle-line-init () { echoti smkx }
function zle-line-finish () { echoti rmkx }
zle -N zle-line-init
zle -N zle-line-finish

powerline-daemon -q
. /lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh