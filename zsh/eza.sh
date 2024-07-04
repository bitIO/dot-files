if [ -x "$(command -v eza)" ]; then
    alias ls="eza --icons"
    alias la="ls --long --all --group"
else
    echo "Exa not installed (brew install exa)"
fi