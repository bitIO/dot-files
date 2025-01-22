# Render markdown on the CLI, with syntax highlighting
if [ ! -x "$(command -v glow)" ]; then
  echo "Glow markdown viewer not found. Install with brew"
  echo "brew install glow"
fi