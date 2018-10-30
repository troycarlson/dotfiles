# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/.{extra,bash_prompt,aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export KUBECONFIG=$KUBECONFIG:~/.kube/config-hl-k8s-cluster

# Vim bindings
set -o vi
