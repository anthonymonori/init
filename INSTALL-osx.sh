# INSTALL BREW PACKAGE MANAGER
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# INSTALL OH-MY-ZS
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# copy zsh profile
cp ./.zshrc ~/.zshrc

# INSTALL GIT plus extras
brew install git
brew install git-extras

# INSTALL node, npm
brew install node
sudo npm install -g npm
