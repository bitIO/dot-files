if [ -x "$(command -v exa)" ]; then
    alias ls="exa --icons"
    alias la="ls --long --all --group"
else
    echo "Exa not installed (brew install exa)"
fi

if [ -x "$(command -v nvim)" ]; then
    alias vim='/usr/local/bin/nvim'
else
    echo "Neovim not installed (brew install neovim)"
fi

alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"

alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

alias resetSpotlight='sudo mdutil -a -i off;sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist;sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist;sudo mdutil -a -i on'

alias wget='wget --no-check-certificate'