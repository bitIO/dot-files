# A simple terminal UI for both docker and docker-compose, written in Go with
# the gocui library.
if [ ! -x "$(command -v lazydocker)" ]; then
  echo "lazydocker not found. Install with brew"
  echo "brew install lazydocker"
fi