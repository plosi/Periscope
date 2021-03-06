#! /usr/bin/env bash

# Install Software Updates
softwareupdate -ia

# Disable the Power Chime
defaults write com.apple.PowerChime ChimeOnAllHardware -bool false
open /System/Library/CoreServices/PowerChime.app &

# System Configuration
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 1
sudo tmutil disablelocal
sudo pmset -a sms 0
sudo nvram boot-args="mbasd=1"

# Write Global Settings
defaults write NSGlobalDomain AppleHighlightColor -string "0.968627 0.831373 1.000000"
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false
defaults write com.apple.systemsound com.apple.sound.beep.sound /System/Library/Sounds/Submarine.aiff
