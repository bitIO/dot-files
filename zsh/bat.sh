if [ -x "$(command -v bat)" ]; then
    alias cat="bat -Pp"
    export BAT_THEME="Visual Studio Dark+"
else
    echo "🔥 Bat not installed (brew install bat)"
fi