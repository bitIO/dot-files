ZSH_AWSVAULT="$ZSH_CUSTOM/plugins"
if [ ! -d $ZSH_AWSVAULT/zsh-aws-vault ]; then
  git clone --depth 1 https://github.com/blimmer/zsh-aws-vault.git \
    $ZSH_AWSVAULT/zsh-aws-vault
fi

source $DOT_FILES_REPO/aws/zshrc