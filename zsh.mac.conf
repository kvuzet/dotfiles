export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# enable command auto-correction.
ENABLE_CORRECTION="true"

# oh my zsh plugins
plugins=(git brew)

source $ZSH/oh-my-zsh.sh

alias t="todo.sh"
export GPG_TTY=$(tty)
export PKG_CONFIG_PATH="/opt/homebrew/Cellar/imagemagick@6/6.9.12-63/lib/pkgconfig:$PKG_CONFIG_PATH"
eval "$(rbenv init - zsh)"
eval "$(nodenv init -)"
eval "$(thefuck --alias)"
eval "$(powerline-daemon -q)"
. /opt/homebrew/lib/python3.10/site-packages/powerline/bindings/zsh/powerline.zsh
