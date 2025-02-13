# Render markdown on the CLI, with syntax highlighting
if [ ! -x "$(command -v zoxide)" ]; then
  echo "Zoxide markdown viewer not found. Install with brew"
  echo "brew install zoxide"
else
  eval "$(zoxide init zsh)"
fi