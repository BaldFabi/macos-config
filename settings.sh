#!/bin/sh

defaults write com.apple.finder AppleShowAllExtensions -bool true
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock largesize -int 90
defaults write com.apple.dock magnification -bool true
defaults write com.apple.menuextra.battery ShowPercent -bool true
defaults write com.apple.driver.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.dock autohide-delay -int 0

if ! command -v prettier 2>&1 >/dev/null
then
        npm install -g prettier
else
        npm update -g prettier
fi

mkdir -p $HOME/.docker/cli-plugins
[ ! -f $HOME/.docker/cli-plugins/docker-compose ] && ln -s /opt/homebrew/bin/docker-compose $HOME/.docker/cli-plugins/docker-compose
