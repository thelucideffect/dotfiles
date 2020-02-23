#!/bin/bash
set -e

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install the Homebrew packages I use on a day-to-day basis.

apps=(
  bash-completion2
  coreutils
  dockutil
  findutils
  grep --with-default-names
  git
  git-extras
  homebrew/completions/brew-cask-completion
  homebrew/dupes/grep
  homebrew/dupes/openssh
  hub
  moreutils
  mtr
  nave
  nvm
  python
  python3
  wifi-password
  wrk2
  yarn
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup

exit 0