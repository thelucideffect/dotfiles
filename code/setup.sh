#!/bin/bash
# Setup vscode

# Install extensions
extensions=(
  dbaeumer.vscode-eslint
  dustinsanders.an-old-hope-theme-vscode
  EQuimper.react-native-react-redux
  eriklynd.json-tools
  jeremyrajan.webpack
  ms-python.python
  ms-vscode.atom-keybindings
  phanitejakomaravolu.EmberES6Snippets
  vsmobile.vscode-react-native
  waderyan.gitblame
)

code --install-extension "${extensions[@]}"

# Add settings
cat $HOME/dotfiles/code/settings.json >> $HOME/Library/Application\ Support/Code/User/settings.json
