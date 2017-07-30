# INSTALL OH-MY-ZS
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# COPY DOTFILES
cp ./.zshrc ~/.zshrc
cp ./.bashrc ~/.bashrc
cp ./.bash_profile ~/.bash_profile

# INSTALL BREW PACKAGE MANAGER
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# BREW CASK
brew install caskroom/cask/brew-cask

# INSTALL GIT plus extras, git-flow and node
brew install git git-extras git-flow-avh node atom

# INSTALL npm
sudo npm install -g npm

# INSTALL various other tools
brew install colordiff keybase python wget pngcrush apktool gradle coreutils

# RVM with stable ruby
curl -sSL https://get.rvm.io | bash -s stable --ruby

# INSTALL powerlevel9k theme for OH-MY-ZS
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
