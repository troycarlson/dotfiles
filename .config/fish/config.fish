set default_user "troycarlson"
fish_vi_key_bindings

source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish

# rbenv configuration
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# Postgres
set PATH /usr/local/opt/postgresql@11/bin $PATH

set -g fish_user_paths "/usr/local/opt/libpq/bin" $fish_user_paths

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/troycarlson/google-cloud-sdk/path.fish.inc' ]; . '/Users/troycarlson/google-cloud-sdk/path.fish.inc'; end
