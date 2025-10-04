SYSTEM=$(uname -s | tr '[:upper:]' '[:lower:]')

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
bindkey '^H' backward-kill-word
bindkey '5~' kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

if [ ! -f ~/.config/fzf-rose-pine.sh ]; then
    curl -sSL https://raw.githubusercontent.com/rose-pine/fzf/refs/heads/main/dist/rose-pine.sh -o ~/.config/fzf-rose-pine.sh
fi

if [ $SYSTEM = "darwin" ]; then
    unsetopt BEEP

    eval "$(/opt/homebrew/bin/brew shellenv)"

    PATH="/Users/fabian/go/bin:$PATH"
    PATH="/opt/homebrew/opt/python@3.12/bin/python3:$PATH"
fi

cd
eval "$(starship init zsh)"

if [ ! -f ~/antigen.zsh ]; then
    curl -L git.io/antigen > ~/antigen.zsh
fi

source ~/antigen.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

source ~/.config/fzf-rose-pine.sh
source <(fzf --zsh)

eval "$(zoxide init zsh)"
function z () {
    __zoxide_z "$@"
}

alias ls='eza'
alias ll='eza -lah -g --icons --git --git-ignore'
alias llt='eza -lah -g --icons --git --tree -L2 --git-ignore'
alias t='tmux'
alias cd='z'
alias vim='nvim'
alias v='nvim'
alias n='nvim'

export EDITOR=vim

[[ ! -v TMUX && ! -v SSH_TTY ]] && tmux && exit
