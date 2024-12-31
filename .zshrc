# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch
unsetopt autocd beep extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
[[ -e /usr/share/doc/pkgfile/command-not-found.zsh ]] && source /usr/share/doc/pkgfile/command-not-found.zsh

# Repair delete-character key for zsh, see `man terminfo` and `man `zshzle`.
bindkey -M emacs "${terminfo[kdch1]}" delete-char
bindkey -M viins "${terminfo[kdch1]}" delete-char
bindkey -M vicmd "${terminfo[kdch1]}" delete-char

# Repair home key for zsh. In kitty, these differ from "${terminfo[khome]}",
# see `cat -v` and `infocmp -1 | grep -E "khome"`.
bindkey -M emacs '\e[H' beginning-of-line
bindkey -M viins '\e[H' beginning-of-line
bindkey -M vicmd '\e[H' beginning-of-line
# Fallback
bindkey -M emacs '\eOH' beginning-of-line
bindkey -M viins '\eOH' beginning-of-line
bindkey -M vicmd '\eOH' beginning-of-line

# Repair end key for zsh. In kitty, these differ from "${terminfo[kend]}",
# see `cat -v` and `infocmp -1 | grep -E "kend"`.
bindkey -M emacs '\e[F' end-of-line
bindkey -M viins '\e[F' end-of-line
bindkey -M vicmd '\e[F' end-of-line
# Fallback
bindkey -M emacs '\eOF' end-of-line
bindkey -M viins '\eOF' end-of-line
bindkey -M vicmd '\eOF' end-of-line

source "$HOME/.shellrc"
