# INSTALL BREW PACKAGE MANAGER
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# BREW CASK
brew install caskroom/cask/brew-cask

# INSTALL iterm2
brew install iterm2

# INSTALL OH-MY-ZS
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# INSTALL powerlevel9k theme for OH-MY-ZS
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# CLONE awesome-terminal-fonts
cd ~ && mkdir temp && cd temp && git clone https://github.com/gabrielelana/awesome-terminal-fonts.git && cd ~
# Rest has to be manual for now: https://github.com/gabrielelana/awesome-terminal-fonts/wiki/OS-X

# COPY DOTFILES
cp ./.zshrc ~/.zshrc
cp ./.bashrc ~/.bashrc
cp ./.bash_profile ~/.bash_profile

# INSTALL GIT plus extras, git-flow and node basic starter pack
brew install git git-extras git-flow-avh node

# INSTALL npm
sudo npm install -g npm

# INSTALL GPG
brew install gnupg gpg-agent pinentry-mac

# INSTALL various other tools
brew install colordiff python wget coreutils

# RVM with stable ruby
curl -sSL https://get.rvm.io | bash -s stable --ruby

# INSTALL Android Studio & Android related tools
brew install gradle apktool pngcrush

# INSTALL docker
brew install docker
