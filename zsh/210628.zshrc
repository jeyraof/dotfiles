### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node
### End of Zinit's installer chunk

# zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
# zinit light sindresorhus/pure
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light marlonrichert/zsh-autocomplete

# fzf - https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# direnv - https://github.com/direnv/direnv
[ -x "$(command -v direnv)" ] && eval "$(direnv hook zsh)"

# starship - https://github.com/starship/starship
[ -x "$(command -v starship)" ] && eval "$(starship init zsh)"

# asdf - https://github.com/asdf-vm/asdf
. $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath) # before compinit
[ -x "$(command -v npm)"  ] && export PATH="$(npm bin -g):$PATH"
[ -x "$(command -v pnpm)" ] && export PATH="$(pnpm bin -g):$PATH"
[ -x "$(command -v yarn)" ] && export PATH="$(yarn global bin):$PATH"

# poetry - https://github.com/python-poetry/poetry
export PATH="$HOME/.poetry/bin:$PATH"
fpath+=~/.zfunc # completion

# fasd - https://github.com/clvv/fasd
[ -x "$(command -v fasd)" ] && eval "$(fasd --init auto)"

# commpinit
autoload -Uz compinit
compinit

###########
## alias ##
###########
alias ta='tmux attach -t' # tmux
alias tk='tmux kill-session -t'
alias tl='tmux list-sessions'
alias tn='tmux new-session -s'
alias ls='lsd' # lsd - https://github.com/Peltoche/lsd
alias vim='nvim' # nvim - https://github.com/neovim/neovim
