# Resource monitor that shows usage and stats for processor, memory, disks,
# network and processes (C++ version and continuation of bashtop and bpytop))
# like htop but better

if [ ! -x "$(command -v btop)" ]; then
  echo "btop not found. Install with brew"
  echo "brew install btop"
else
  alias htop="btop"
fi