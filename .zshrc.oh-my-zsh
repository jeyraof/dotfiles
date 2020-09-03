export ZSH="/Users/jeyraof/.oh-my-zsh"
ZSH_THEME=""

plugins=(
  git
  git-flow
  sudo
  django
  web-search
  bundler
  docker
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# pipenv
eval "$(pipenv --completion)"

# rbenv
eval "$(rbenv init -)"

# mysql
PATH=$PATH:/usr/local/mysql/bin

# pure-prompt
autoload -U promptinit; promptinit
prompt pure

# direnv
which direnv > /dev/null && eval "$(direnv hook zsh)"

# alias
alias be='bundle exec'
alias pm='python manage.py'
alias ta='tmux a -t'
alias tl='tmux ls'
alias tn='tmux new -s'
alias tk='tmux kill-session -t'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# added by pipsi (https://github.com/mitsuhiko/pipsi)
export PATH="/Users/jeyraof/.local/bin:$PATH"

# avoid mojave bug to use fork()
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# openssl
export PATH="/usr/local/opt/openssl/bin:$PATH"
