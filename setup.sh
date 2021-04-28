#!/bin/zsh

# Copy config files to home directory 
cp .env.sh .zshrc ~

# XCode command line tools 
xcode-select --install

# Homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# brew 
brew install tree ack git vim python pandoc awscli yarn clojure leiningen

# brew cask
brew install --cask appcleaner caffeine docker cheatsheet google-chrome vlc visual-studio-code spotify zoom slack whatsapp messenger intellij-idea iterm2 basictex rectangle tomighty miniconda transmission

# VSC extensions
code --install-extension ms-python.python && code --install-extension ms-vscode.cpptools && code --install-extension zhuangtongfa.material-theme

# Oh My Zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Powerlevel10k 
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# The Ultimate vimrc 
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Latex fonts 
tlmgr install collection-fontsrecommended
