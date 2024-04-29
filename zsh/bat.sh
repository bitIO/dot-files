if [ -x "$(command -v bat)" ]; then
    alias cat="bat -Pp"
else
    echo "🔥 Bat not installed (brew install bat)"
fi