#!/bin/bash
set -e

# Setup vscode

declare -a EXTENSIONS=(
  "dbaeumer.vscode-eslint"
  "EQuimper.react-native-react-redux"
  "eriklynd.json-tools"
  "jeremyrajan.webpack"
  "ms-python.python"
  "ms-vscode.atom-keybindings"
  "vsmobile.vscode-react-native"
  "eamodio.gitlens"
  "ms-azuretools.vscode-docker"
  "ericadamski.carbon-now-sh"
  "redhat.vscode-yaml"
  "jpoissonnier.vscode-styled-components"
  "robbowen.synthwave-vscode@0.0.7"
  "johnpapa.vscode-peacock"
  "pkief.material-icon-theme"
  "bierner.markdown-emoji"
  "oderwat.indent-rainbow"
  "be5invis.vscode-custom-css"
)

for i in "${EXTENSIONS[@]}"; do
  code --install-extension "$i"
done

unset extensions

# Add settings
# EDIT vscode_custom_css.imports before running!
cat $HOME/dotfiles/code/settings.json >> $HOME/Library/Application\ Support/Code/User/settings.json

exit 0