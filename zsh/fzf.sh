if [ ! -x "$(command -v fzf)" ]; then
  echo "Fuzzy finder viewer not found. Install with brew"
  echo "brew install fzf"
elif [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh
  autoload -U compinit && compinit
  zinit light Aloxaf/fzf-tab # fzf tab completion
fi