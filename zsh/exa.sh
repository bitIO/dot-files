if [ -x "$(command -v exa)" ]; then
    alias ls="exa --icons"
    alias la="ls --long --all --group"
else
    echo "Exa not installed (brew install exa)"
fi