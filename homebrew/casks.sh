#! /usr/bin/env bash

# Install Application Binaries
echo "Installing Casks ..."

apps=(
    iterm2
    emacs-mac
    flux
    firefox
    chrome
    spectacle
    audacity
    conda
    steam
    transmission
    vlc
)

brew tap railwaycat/homebrew-emacsmacport
brew cask install "${apps[@]}"
brew link apps
