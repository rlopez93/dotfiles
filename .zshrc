# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

export LESS="$LESS -W -F"
export LS_OPTIONS="--color=auto -AFGhX --group-directories-first"

alias ls="ls $LS_OPTIONS"
alias lg="ls -g"
alias :q="exit"

alias hextodec="convert 16 10"
alias dectohex="convert 10 16"

alias hexbc="convert 16 16"
alias mancat="man -Pcat"

[[ $fpath = *ricardo* ]] || fpath=(~ricardo/bin/fns $fpath)

autoload ${fpath[1]}/*(:t)

#export CXXFLAGS=" -std=c++23 -g -O2 -Wall -Wextra -Wpedantic "

source $HOME/.zsh-vi-mode/zsh-vi-mode.plugin.zsh

################################################################################

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

################################################################################

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export DefaultIMModule=fcitx
