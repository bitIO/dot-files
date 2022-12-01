if [ "$(which yarn)" = "" ]; then
  echo "🔥 [NODE] yarn not installed"
fi

if [ "$(which ntl)" = "" ]; then
  echo "🔥 [NODE] ntl not installed"
else
  export NTL_RUNNER=yarn
fi