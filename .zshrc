export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="true"
plugins=(git zsh-autosuggestions fzf zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


alias k="kubectl"
alias naruto="ssh root@10.0.0.70"
alias v="vim"

POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
