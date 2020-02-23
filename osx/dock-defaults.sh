#!/bin/bash
set -e

# Remove default dock apps
declare -a REMOVE_DOCKAPPS=(
  "Siri"
  "Launchpad"
  "Safari"
  "Mail"
  "Contacts"
  "Calendar"
  "Notes"
  "Reminders"
  "Maps"
  "Photos"
  "Messages"
  "FaceTime"
  "Pages"
  "Numbers"
  "Keynote"
  "News"
  "iTunes"
  "App Store"
)

for i in "${REMOVE_DOCKAPPS[@]}"; do
  dockutil --remove "$i"
done

unset REMOVE_DOCKAPPS

# Add preferred apps to dock, in order
declare -a ADD_DOCKAPPS=(
  "/Applications/Visual Studio Code.app"
  "/Applications/Hyper.app"
  "/Applications/Slack.app"
  "/Applications/Firefox Developer Edition.app"
  "/Applications/Google Chrome.app"
  "/Applications/1Password 7.app"
  "/Applications/Spotify.app"
  "/Applications/MacDown.app"
)

for i in "${ADD_DOCKAPPS[@]}"; do
  dockutil --add "$i"
done

unset ADD_DOCKAPPS

dockutil --move 'System Preferences' --position end

dockutil --add '' --type spacer --section apps --after Slack
dockutil --add '' --type spacer --section apps --after "Google Chrome"

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

exit 0