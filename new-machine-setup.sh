#!/bin/bash
echo "Don't run this script directly, copy/paste the parts you need."
exit

# =============================================================================
# Linux dependencies
# =============================================================================
sudo apt install \
    htop \
    curl \
    git \
    fish \
    xcape

# =============================================================================
# Generic setup
# =============================================================================

# Set fish as default shell
chsh -s /usr/bin/fish

# Install oh-my-fish
curl -L https://get.oh-my.fish | fish