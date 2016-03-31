#! /usr/bin/env bash

# Install Command Line Binaries
echo "Installing Brews ..."
binaries=(
    ccat
    flac
    grc
    node
    python
    python3
    git
    git-extras
    git-lfs
    shellcheck
    terminal-notifier
    tig
    tree
    websocketd
)
brew install "${binaries[@]}"
