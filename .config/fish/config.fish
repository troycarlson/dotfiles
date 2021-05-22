set default_user "troycarlson"
fish_vi_key_bindings

source ~/.config/fish/functions.fish
source ~/.config/fish/aliases.fish
source ~/.config/fish/keyboard.fish

# Ruby config
if test (which ruby)
    set PATH $HOME/.rbenv/bin $PATH
    set PATH $HOME/.rbenv/shims $PATH
else
    echo "[config.fish] Couldn't find Ruby, skipping Ruby config"
end

# Postgres config
if test (which psql)
    set PATH /usr/local/opt/postgresql@11/bin $PATH
    set -g fish_user_paths "/usr/local/opt/libpq/bin" $fish_user_paths
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/troycarlson/google-cloud-sdk/path.fish.inc' ]; . '/Users/troycarlson/google-cloud-sdk/path.fish.inc'; end

# Starship prompt 
if test (which starship)
    starship init fish | source
end
