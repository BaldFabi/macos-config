.PHONY: bundle

SHELL := /bin/bash

brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

bundle:
	brew bundle --file=Brewfile

cleanup:
	brew bundle --force cleanup --file=Brewfile

backup-configs:
	cp ~/.config/karabiner/karabiner.json karabiner.json
	cp ~/Library/Preferences/com.googlecode.iterm2.plist .
	cp ~/Library/Preferences/com.knollsoft.Rectangle.plist .

restore-configs:
	cp karabiner.json ~/.config/karabiner/karabiner.json
	cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
	cp com.knollsoft.Rectangle.plist ~/Library/Preferences/com.knollsoft.Rectangle.plist
