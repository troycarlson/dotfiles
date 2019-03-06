# Required for my dotfile management setup
alias dots='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Git
alias gcl="git clone"
alias gb="git branch"
alias gf="git fetch"
alias gp="git pull"
alias ga="git add"
alias gd="git diff"
alias gco="git checkout"
alias gcm="git checkout master"
alias gc="git commit"
alias gst="git status"

# Shortcuts
alias v="vim"
alias rserve="bundle exec rails s"
alias rcon="bundle exec rails c"

# Overrides
alias sudo="sudo -E " # carry over environment to sudo commands
alias cp="cp -i"      # confirm before overwriting something
alias mv="mv -i"      # confirm before overwriting something
alias df="df -h"      # human-readable sizes
alias du="du -h"      # human-readable sizes
alias free="free -m"  # human-readable sizes
alias ll="ls -l"      # detailed file list
alias la="ls -lA"     # detailed file list with hidden files
alias wh="which -aS"  # Informative version of which

# Make sure tmux plays nicely with vim themes
alias tmux="env TERM=screen-256color-bce tmux"
