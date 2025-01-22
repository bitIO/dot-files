# Cleans node_modules, target, build, and friends from your projects.
if [ ! -x "$(command -v kondo)" ]; then
  echo "kondo not found. Install with brew"
  echo "brew install kondo"
fi