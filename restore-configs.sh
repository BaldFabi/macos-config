#!/bin/sh

[ ! -d ~/.tmux/plugins/tpm ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

mkdir -p ~/.config/karabiner
cp karabiner.json ~/.config/karabiner/karabiner.json
cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
cp com.knollsoft.Rectangle.plist ~/Library/Preferences/com.knollsoft.Rectangle.plist
cp com.ospfranco.sol.plist ~/Library/Preferences/com.ospfranco.sol.plist
cp com.lwouis.alt-tab-macos.plist ~/Library/Preferences/com.lwouis.alt-tab-macos.plist
cp .zshrc ~/.zshrc
cp .tmux.conf ~/.tmux.conf
cp starship.toml ~/.config/starship.toml
cp wezterm.lua ~/.config/wezterm/wezterm.lua

curl -fsSL https://git.io/antigen -o ~/antigen.zsh
curl -fsSL https://raw.githubusercontent.com/rose-pine/fzf/refs/heads/main/dist/rose-pine.sh -o ~/.config/fzf-rose-pine.sh
