#! /usr/bin/env bash

# Install Application Binaries
echo "Installing Casks ..."

apps=(
    dropbox
    emacs-mac
    flux
    conda
    gfxcardstatus
    google-drive
    qlcolorcode
    qlmarkdown
    qlstephen
    steam
    transmission
    vlc
)

brew tap railwaycat/homebrew-emacsmacport
brew cask install "${apps[@]}"
brew link apps
