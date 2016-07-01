#! /usr/bin/env bash

# Install Application Binaries
echo "Installing Casks ..."

apps=(
    emacs-mac
    flux
    conda
    steam
    transmission
    vlc
)

brew tap railwaycat/homebrew-emacsmacport
brew cask install "${apps[@]}"
brew link apps
