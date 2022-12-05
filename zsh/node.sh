if [ -z "$(command -v yarn)" ]; then
  echo "🔥 [NODE] yarn not installed"
fi

if [ -z "$(command -v ncu)" ]; then
  echo "🔥 [NODE] node-check-updates not installed"
  echo "ℹ️  npm install -g npm-check-updates"
fi

if [ -z "$(command -v http-server)" ]; then
  echo "🔥 [NODE] http-server not installed"
  echo "ℹ️  npm install --global http-server"
fi

if [ -z "$(command -v ntl)" ]; then
  echo "🔥 [NODE] ntl not installed"
else
  export NTL_RUNNER=yarn
fi