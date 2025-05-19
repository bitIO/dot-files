if [ ! -d "$HOME/.asdf" ]; then
  echo "Installing asdf..."
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
fi
. $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)

# https://ivm.docs.inditex.dev/ivm/latest/configuration/end-users/ivm-env-manager.html
source ${ASDF_DIR}/plugins/ivm-java/util/ivm_environment_manager.sh
autoload -Uz add-zsh-hook
add-zsh-hook precmd ivm_setup_environment
export IVM_ENV_MANAGER_LOG=1