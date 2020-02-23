#!/bin/bash
set -e

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions
brew tap homebrew/cask-fonts

# Install packages
apps=(
  1password
  alfred
  atom
  dash
  daisydisk
  docker
  font-fira-code
  firefox
  firefox-developer-edition
  firefox-nightly
  google-chrome
  google-chrome-canary
  hyper
  imageoptim
  macdown
  postman
  psquel
  slack
  sonos
  spectacle
  spotify
  vanilla
  visual-studio-code
  vlc
)

brew cask install "${apps[@]}"

exit 0