ZSH_SAFERM="$ZSH_CUSTOM/plugins"
if [ ! -d $ZSH_SAFERM/zsh-safe-rm ]; then
  echo "safe-rm not installed, cloning ..."
  git clone --recursive --depth 1 https://github.com/mattmc3/zsh-safe-rm $ZSH_SAFERM/zsh-safe-rm
fi