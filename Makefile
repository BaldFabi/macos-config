SHELL := /bin/bash

# put bundle at the top to make it the default command for make
bundle:
	brew bundle --file=Brewfile

cleanup:
	brew bundle --force cleanup --file=Brewfile

backup-configs:
	./backup-configs.sh

restore-configs:
	./restore-configs.sh

brew:
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh -o install.sh
	chmod +x install.sh
	./install.sh
	rm install.sh

settings:
	./settings.sh
