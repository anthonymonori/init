# INSTALL BREW PACKAGE MANAGER
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# INSTALL OH-MY-ZS
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# copy zsh profile
cp ./.zshrc ~/.zshrc

# INSTALL GIT
brew install git
