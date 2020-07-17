#!/bin/bash
echo "Don't run this script directly, copy/paste the parts you need."
exit

# =============================================================================
# Linux-specific
# =============================================================================

# Install fish (latest instructions here: https://https://fishshell.com/)
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish

# Install other tools
sudo apt update
sudo apt install htop \
                 curl \
                 git \
                 vim \
                 tmux \
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
# Generic system setup
# =============================================================================

# Set fish as default shell
chsh -s /usr/bin/fish

# Install oh-my-fish
curl -L https://get.oh-my.fish | fish

# Install an oh-my-fish theme
# Note: if a theme depends on Powerline glyphs, iTerm2 on macOS supports
#       these without installing Powerline patched fonts:
#       > Preferences > Profiles > Text > "Use built-in Powerline glyphs"
omf install agnoster

# =============================================================================
# Dotfiles setup
# =============================================================================

# 1. Clone the repository
git clone --bare <git-repo-url> $HOME/.dotfiles

# 2. Define the alias in the current shell scope
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# 3. Check out the repository content
dots checkout

# 4. Ignore untracked files
dots config --local status.showUntrackedFiles no

# 5. Review all of the files and update any usernames/variables for your
#    own purposes.