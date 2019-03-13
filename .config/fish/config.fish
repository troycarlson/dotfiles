set default_user "tcarlson"

source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish

# rbenv configuration
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

set -g fish_user_paths "/usr/local/opt/libpq/bin" $fish_user_paths
