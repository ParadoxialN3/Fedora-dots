# This is my humble zsh configuration, with my set of plugins and my prompt. Has some creature comforts like syntax highlighting and autocomplete but pretty slim 

# Add binary paths
export PATH="$HOME/.cargo/bin:$PATH"

# History in histfile
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Sourcing Plugins to zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add the funny ZSH theme
eval "$(starship init zsh)"

# My Aliases
alias vim="nvim"
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"
alias cl="clear"

# ZSH hotkeys
bindkey '^ ' autosuggest-accept


