#! /usr/bin/env bash

# Install Application Binaries
echo "Installing Casks ..."


apps=(
    alfred
    cleanmymac
    dropbox
    endurance
    emacs-mac
    flux
    gfxcardstatus
    google-drive
    imageoptim
    istat-menus
    launchrocket
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
