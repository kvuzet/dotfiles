export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/kvuzet/.oh-my-zsh"

ZSH_THEME="agnoster"
# enable command auto-correction.
ENABLE_CORRECTION="true"

# Oh My ZSH plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# aliases
alias t="todo.sh"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias ssh='TERM=xterm-256color ssh'

# PATH
PATH=${PATH}:"/snap/bin:${HOME}/.local/bin"
export GPG_TTY=$(tty)

#export TERM=xterm-256color

# powerline
eval "$(powerline-daemon -q)"
