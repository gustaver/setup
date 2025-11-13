#!/bin/zsh

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install tree ack git vim python pandoc clojure ffmpeg zsh-syntax-highlighting trash jq tldr

brew install --cask appcleaner caffeine docker google-chrome vlc visual-studio-code spotify zoom slack whatsapp iterm2 mactex rectangle transmission

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
