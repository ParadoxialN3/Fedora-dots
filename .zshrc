export EDITOR="nvim"

# History in histfile
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000

autoload -U colors && colors
PS1="%B%{$fg[white]%}(%{$fg[green]%}%n%{$fg[blue]%}@%{$fg[green]%}%M %{$fg[red]%}%~%{$fg[white]%})%{$reset_color%}-$%b "

# Making FZF able to search hidden files
export FZF_DEFAULT_COMMAND="find -L"
export TERM="xterm-256color"

# Adding paths for DOOM Emacs if installed
if [ -d "$HOME/.emacs.d/bin/" ];
    then export PATH="$HOME/.emacs.d/bin:$PATH"
fi

# Other paths
if [ -d "$HOME/.local/bin/" ];
    then export PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.cargo/bin" ];
    then export PATH="$HOME/.cargo/bin:$PATH"
fi

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# vim mode is sexy
set -o vi
export KEYTIMEOUT=1

# Sourcing Plugins to zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Prompt
#PROMPT='[%*] %{$fg[cyan]%}%n%{$reset_color%}:%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info) %(!.#.$) '
#ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}git:("
#ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

# My Aliases
alias vi="nvim"
alias vim="nvim"
alias nv="nvim"
alias ls="lsd -a"
alias viminit="nvim $HOME/.config/nvim/init.vim"
alias l="ls -l"
alias lla="ls -la"
alias lt="ls --tree"
alias i3start="i3-msg restart"
alias i3config="vim ~/.config/i3/config"	
alias emacsrs="systemctl restart --user emacs"
alias emacs="emacsclient -c -a 'emacs'"
alias chadwm="cd ~/.config/chadwm/chadwm"

# ZSH hotkeys
bindkey '^ ' autosuggest-accept
