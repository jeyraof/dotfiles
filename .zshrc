# brew
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# start shell
eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# alias
alias ls="eza --git --icons"
alias ll="eza -l --git --icons"
alias tree="eza -T"
alias cat="bat --paging=never --style=plain"
alias grep="rg"
alias du="dust"
alias top="htop"
