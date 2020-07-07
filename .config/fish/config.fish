set default_user "troycarlson"
fish_vi_key_bindings

function config_log
    echo [(status --current-filename)] $argv
end

source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish
source ~/.config/fish/keyboard.fish

# Ruby config
if test (which ruby)
    set PATH $HOME/.rbenv/bin $PATH
    set PATH $HOME/.rbenv/shims $PATH
else
    config_log "Couldn't find Ruby, skipping Ruby config"
end

# Postgres
set PATH /usr/local/opt/postgresql@11/bin $PATH

set -g fish_user_paths "/usr/local/opt/libpq/bin" $fish_user_paths

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/troycarlson/google-cloud-sdk/path.fish.inc' ]; . '/Users/troycarlson/google-cloud-sdk/path.fish.inc'; end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/troycarlson/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

