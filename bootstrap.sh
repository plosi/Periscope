#! /usr/bin/env bash

# Request Sudo Upfront
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2> /dev/null &

# Run Installation Scripts
source "homebrew/install.sh"
source "system/install.sh"
source "zsh/install.sh"
source "spacemacs/install.sh"

# Personalize Git Configuration
ln -fs "$PWD/.gitconfig" ~/.gitconfig
git config --global core.excludesfile "$PWD/.gitignore"
if ! grep -q "name =" "$PWD/.gitconfig"; then
    echo -n "Commit Author: " && read author
    git config --global user.name "$author"
fi
if ! grep -q "email =" "$PWD/.gitconfig"; then
    echo -n "Commit Email: " && read email
    git config --global user.email "$email"
fi

# Change the Default Login Shell
if [ "$SHELL" != "$(which zsh)" ]; then
    if ! grep -q "$(which zsh)" "/etc/shells"; then
        which zsh | sudo tee -a /etc/shells > /dev/null
    fi
    echo "Changing Login Shell ..."
    chsh -s "$(which zsh)"
fi

# Notify the User
echo "Installation Complete!"
echo "Note: some changes may require a restart in order to take effect."
