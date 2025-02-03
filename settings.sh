#!/bin/sh

defaults write com.apple.finder AppleShowAllExtensions -bool true
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock largesize -int 90
defaults write com.apple.dock tilesize -int 60
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.menuextra.battery ShowPercent -bool true
defaults write com.apple.driver.AppleMultitouchTrackpad Clicking -bool true
defaults write -g InitialKeyRepeat -int 15 
defaults write -g KeyRepeat -int 2

if ! command -v prettier 2>&1 >/dev/null
then
        npm install -g prettier
else
        npm update -g prettier
fi

mkdir -p $HOME/.docker/cli-plugins
[ ! -f $HOME/.docker/cli-plugins/docker-compose ] && ln -s /opt/homebrew/bin/docker-compose $HOME/.docker/cli-plugins/docker-compose

mkdir -p ~/Library/Application\ Support/k9s/skins
yq -i '.k9s.ui.skin = "rose-pine"' ~/Library/Application\ Support/k9s/config.*
curl -sSL https://raw.githubusercontent.com/derailed/k9s/refs/heads/master/skins/rose-pine.yaml -o ~/Library/Application\ Support/k9s/skins/rose-pine.yaml
