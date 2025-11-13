# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
plugins=(git colored-man-pages colorize pip python brew macos)

source $ZSH/oh-my-zsh.sh

# User configuration
source ~/.env.sh

# zsh syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
