tap "hashicorp/tap"
tap "homebrew/bundle"
tap "homebrew/services"
tap "homeport/tap"
brew "python@3.12"
brew "yq"
brew "eza"
brew "ghostscript"
brew "go"
brew "helm"
brew "htop"
brew "k9s"
brew "kubernetes-cli"
brew "clusterctl"
brew "kustomize"
brew "podman"
brew "docker"
brew "neovim"
brew "nmap"
brew "node"
brew "ripgrep"
brew "starship"
brew "tmux"
brew "wget"
brew "zoxide"
brew "hashicorp/tap/terraform"
brew "hashicorp/tap/packer"
brew "homeport/tap/havener"
brew "fzf"
brew "docker-compose"
brew "templ"
brew "d2"
cask "aldente"
cask "alt-tab"
cask "appcleaner"
cask "dbeaver-community"
cask "discord"
cask "drawio"
cask "figma"
cask "firefox"
cask "flameshot"
cask "font-fira-code"
cask "font-fira-code-nerd-font"
cask "inkscape"
cask "iterm2"
cask "kap"
cask "karabiner-elements"
cask "microsoft-remote-desktop"
cask "mysqlworkbench"
cask "nextcloud"
cask "notion"
cask "openvpn-connect"
cask "rectangle"
cask "sol"
cask "spotify"
cask "the-unarchiver"
cask "thunderbird"
cask "vlc"
cask "sonos"
cask "pgadmin4"
mas "Bitwarden", id: 1352778147
mas "WhatsApp Messenger", id: 310633997
mas "Goodnotes 6", id: 1444383602
mas "Microsoft To Do", id: 1274495053
mas "Home Assistant", id: 1099568401

hostname = `hostname -s`.strip

# unless could be also a viable alternative
if hostname == "toshiro"
    cask "keepassxc"
    cask "google-chrome"
    mas "Affinity Designer 2", id: 1616831348
    mas "Affinity Photo 2: Image Editor", id: 1616822987
else
    cask "microsoft-teams"
    cask "slack"
end
