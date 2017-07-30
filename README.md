# init
Initialization scripts for a OS X installation that runs several scripts and install several tools that I personally prefer to use

## What it contains?
- My [zsh configuration](.zshrc) with custom aliases, shell preferences and custom commands
- [robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [git](https://github.com/Homebrew/homebrew-core/blob/master/Formula/git.rb)
- [git-extras](https://github.com/Homebrew/homebrew-core/blob/master/Formula/git-extras.rb)
- [git-flow-avh](https://github.com/Homebrew/homebrew-core/blob/master/Formula/git-flow-avh.rb)
- [node](https://github.com/Homebrew/homebrew-core/blob/master/Formula/node.rb)
- [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask)
- [atom](https://github.com/caskroom/homebrew-cask/blob/master/Casks/atom.rb)
- [npm/npm](https://github.com/npm/npm)
- [keybase](https://github.com/caskroom/homebrew-cask/blob/master/Casks/keybase.rb)
- [rvm/rvm](https://github.com/rvm/rvm)
- [python2](https://github.com/Homebrew/homebrew-core/blob/master/Formula/python.rb)
- [wget](https://github.com/Homebrew/homebrew-core/blob/master/Formula/wget.rb)
- [pngcrush](https://github.com/Homebrew/homebrew-core/blob/master/Formula/pngcrush.rb)
- [colordiff](https://github.com/Homebrew/homebrew-core/blob/master/Formula/colordiff.rb)
- [apktool](https://github.com/Homebrew/homebrew-core/blob/master/Formula/apktool.rb)
- [gradle](https://github.com/Homebrew/homebrew-core/blob/master/Formula/gradle.rb)
- [coreutils](https://github.com/Homebrew/homebrew-core/blob/master/Formula/coreutils.rb)
- [bhilburn/powerlevel9k](https://github.com/bhilburn/powerlevel9k)
- [gabrielelana/awesome-terminal-fonts](https://github.com/gabrielelana/awesome-terminal-fonts/wiki/OS-X)
- My iTerm2 [profile](iterm2-profile.json) to be imported manually

## Running OSX compatible script

#### via curl

```shell
sh -c "$(curl -fsSL https://raw.github.com/anthonymonori/init/master/INSTALL.sh)"
```

#### via wget

```shell
sh -c "$(wget https://raw.github.com/anthonymonori/init/master/INSTALL.sh -O -)"
```

Happy initialization! 🎉