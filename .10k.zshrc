ZLE_RPROMPT_INDENT=2

. $HOME/.ssh-agent-keys

# AWS
export AWS_PAGER=""

# BREW
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# DIRENV
eval "$(direnv hook zsh)"

# ITERM SHELL INTEGRATION
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# OPENWEB
export OWHOME="$HOME/Dev/bbva/openweb"
export PATH="$PATH:$HOME/Dev/bbva/openweb/bin"

# VIM
export EDITOR='vim'

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# OH-MY-ZSH
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=13
plugins=(aws common-aliases docker git history npm zsh-autosuggestions history-substring-search encode64 urltools alias-finder)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source $ZSH/oh-my-zsh.sh

# CUSTOM
source $HOME/.aliases.sh
source $HOME/.z.sh
source $HOME/.history.sh
source $HOME/.functions.sh
