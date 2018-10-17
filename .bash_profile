export PATH=$HOME/bin:$PATH
export PATH=/Users/tcarlson/Library/Python/2.7/bin:$PATH

# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/.{extra,aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export KUBECONFIG=$KUBECONFIG:~/.kube/config-hl-k8s-cluster

# Vim bindings
set -o vi

