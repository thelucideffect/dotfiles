#!/bin/bash
set -e

# copy config to .ssh folder
mkdir -p ~/.ssh
cp ~/dotfiles/ssh/config ~/.ssh/config

# start ssh-agent in the background
eval "$(ssh-agent -s)"

# Generate SSH Key if none already present
if test ! "$(ls -A ~/.ssh)"
then
  read -p "Enter email address to generate a new SSH Key against: " choice

  # generate key
  ssh-keygen -t rsa -b 4096 -C "$choice"
fi

# add private key to ssh-agent
ssh-add -K ~/.ssh/id_rsa

kill $SSH_AGENT_PID

# copy public key to clipboard
pbcopy < ~/.ssh/id_rsa.pub

# wait for user to copy to github config
read -p "Key copied to clipboard, add it to your Github keys here: https://github.com/settings/keys

Once complete, press enter to continue..."

exit 0
