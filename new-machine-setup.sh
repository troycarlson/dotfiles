#!/bin/bash
echo "Don't run this script directly, copy/paste the parts you need."
exit

# =============================================================================
# Linux-specific
# =============================================================================

sudo apt install htop \
                 curl \
                 git \
                 vim \
                 tmux \
                 fish \
                 xcape

# =============================================================================
# macOS-specific
# =============================================================================

# Install Homebrew (or follow instructions at https://homebrew.sh)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Casks
brew cask install iterm2 \
                  karabiner-elements

# Formulae
brew install htop \
             vim \
             tmux \
             git \
             fish

# macOS requires manually adding fish to /etc/shells before using chsh
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells

# =============================================================================
# Generic setup
# =============================================================================

# Set fish as default shell
chsh -s /usr/bin/fish

# Install oh-my-fish
curl -L https://get.oh-my.fish | fish

# Install an oh-my-fish theme
# Note: if a theme depends on Powerline glyphs, iTerm2 on macOS supports these
#       without installing Powerline patched fonts
#       Preferences > Profiles > Text > "Use built-in Powerline glyphs"
omf install agnoster