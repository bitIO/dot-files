if [ ! -d $HOME/bin ]; then
  ln -s $DOT_FILES_REPO/bin $HOME/bin
fi

export PATH=$PATH:$HOME/bin