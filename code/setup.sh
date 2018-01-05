#!/bin/bash
# Setup vscode

# Install extensions
code --install-extension dbaeumer.vscode-eslint
code --install-extension dustinsanders.an-old-hope-theme-vscode
code --install-extension EQuimper.react-native-react-redux
code --install-extension eriklynd.json-tools
code --install-extension jeremyrajan.webpack
code --install-extension ms-python.python
code --install-extension ms-vscode.atom-keybindings
code --install-extension phanitejakomaravolu.EmberES6Snippets
code --install-extension vsmobile.vscode-react-native
code --install-extension waderyan.gitblame

# Add settings
cat $HOME/dotfiles/code/settings.json >> $HOME/Library/Application\ Support/Code/User/settings.json
