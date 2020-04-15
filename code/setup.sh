#!/bin/bash
set -e

# Setup vscode

declare -a EXTENSIONS=(
  "ms-vscode.atom-keybindings"
  "ericadamski.carbon-now-sh"
  "be5invis.vscode-custom-css"
  "ms-azuretools.vscode-docker"
  "dbaeumer.vscode-eslint"
  "eamodio.gitlens"
  "oderwat.indent-rainbow"
  "eriklynd.json-tools"
  "bierner.markdown-emoji"
  "pkief.material-icon-theme"
  "johnpapa.vscode-peacock"
  "robbowen.synthwave-vscode@0.0.7"
  "jpoissonnier.vscode-styled-components"
  "redhat.vscode-yaml"
)

for i in "${EXTENSIONS[@]}"; do
  code --install-extension "$i"
done

unset extensions

# Add settings
# EDIT vscode_custom_css.imports before running!
cat $HOME/dotfiles/code/settings.json >> $HOME/Library/Application\ Support/Code/User/settings.json

exit 0