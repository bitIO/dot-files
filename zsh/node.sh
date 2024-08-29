if [ ! -x "$(command -v npm)" ]; then
  echo "npm not found. Install nvm first"
else
  INSTALLED_PACKAGES=$(npm list -g --depth=0 -p | awk '{print $1}')

  # array of packages to check
  PACKAGES_TO_CHECK=(
    "depcheck"
    "http-server"
    "npm-check-updates"
    "npkill"
    "ntl"
    "zx"
  )


  for PACKAGE in $PACKAGES_TO_CHECK; do
    if [[ ! $INSTALLED_PACKAGES =~ $PACKAGE ]]; then
      # echo print in red
      echo "🔥 [NPM] $PACKAGE not found. Install with npm: \033[0;31m npm install -g $PACKAGE\033[0m"
    fi
  done
fi

if [ "$(command -v ntl)" ]; then
  if [ "$(command -v yarn)" ]; then
    export NTL_RUNNER=yarn
  fi
  alias ntl="ntl -A"
fi

if [ "$(command -v ncu)" ]; then
  alias ncu="ncu --interactive --format group"
fi

export COREPACK_ENABLE_AUTO_PIN=0