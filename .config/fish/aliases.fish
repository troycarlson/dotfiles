# Required for my dotfile management setup
alias dots=(which git)' --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Make sure tmux plays nicely with vim themes
alias tmux="env TERM=screen-256color-bce tmux"

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
alias push="git push"

# Shortcuts
alias v="vim"
alias rserve="bundle exec rails s"
alias rcon="bundle exec rails c"
alias zzz="pmset displaysleepnow"
alias ip="ifconfig | grep 10.0"
alias django="python3 manage.py"
alias conda="/home/troycarlson/anaconda3/bin/conda"
switch (machine_name)
    case 'macbook'
        alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --user-data-dir ~/.config/vscode/'
    case 'workstation'
        alias code='/snap/bin/code --user-data-dir ~/.config/vscode/'
        alias datagrip='/opt/DataGrip/DataGrip-2020.1.5/bin/datagrip.sh'
end
alias vstart="gcloud compute instances start troy-workstation && gcloud compute config-ssh"
alias vssh="ssh (cat ~/.ssh/config | grep Host\ troy-workstation | cut -d' ' -f2)"

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
alias python="/usr/local/bin/python3"
