HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000001
SAVEHIST=10000000

setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
unsetopt EXTENDED_HISTORY        # Write the history file in the ":start:elapsed;command" format.
unsetopt INC_APPEND_HISTORY_TIME #
unsetopt SHARE_HISTORY           # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.


zshaddhistory() {
    local line=${1%%$'\n'}
    local cmd=${line%% *}
    # Only those that satisfy all of the following conditions are added to the history
    [[ ${#line} -ge 5
       && ${cmd} != cd
       && ${cmd} != code
       && ${cmd} != file
       && ${cmd} != gaa
       && ${cmd} != git
       && ${cmd} != ggpull
       && ${cmd} != ggpush
       && ${cmd} != glol
       && ${cmd} != gst
       && ${cmd} != la
       && ${cmd} != less
       && ${cmd} != ll
       && ${cmd} != ls
       && ${cmd} != man
       && ${cmd} != mkdir
       && ${cmd} != npm
       && ${cmd} != open
       && ${cmd} != ping
       && ${cmd} != pwd
       && ${cmd} != scp
       && ${cmd} != subl
       && ${cmd} != take
       && ${cmd} != vi
       && ${cmd} != vim
       && ${cmd} != vscode
       && ${cmd} != which
       && ${cmd} != wich
       && ${cmd} != yarn
       && ${cmd} != z
    ]]
}
zshaddhistory
