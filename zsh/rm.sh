[[ -d ${ZDOTDIR:-~}/.zplugins/zsh-safe-rm ]] || \
  git clone --recursive --depth 1 https://github.com/mattmc3/zsh-safe-rm ${ZDOTDIR:-~}/.zplugins/zsh-safe-rm
source ${ZDOTDIR:-~}/.zplugins/zsh-safe-rm/zsh-safe-rm.plugin.zsh