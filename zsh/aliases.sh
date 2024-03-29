alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"

alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

alias resetSpotlight='sudo mdutil -a -i off;sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist;sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist;sudo mdutil -a -i on'

alias wget='wget --no-check-certificate'