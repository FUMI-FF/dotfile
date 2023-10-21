# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/fumi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# alias
alias ls='exa --icons'
alias ll='exa -al --icons'
alias copy='xclip -selection clipboard'

alias vim='nvim'
alias vim,='nvim ~/.config/nvim/init.vim'
alias fvm='nvim $(fzf)'
alias emacs='nvim'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# zsh vi mode
export EDITOR=nvim
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey "^O" edit-command-line

#path
export PATH=~/Project/mikanenv/osbook/devenv:$PATH

# starship
eval "$(starship init zsh)"

