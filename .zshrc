# Set default username
export USERNAME="dkanjamo"

# Path to your oh-my-zsh installation.
export ZSH="/Users/$USERNAME/.oh-my-zsh"

# Use a Programmer Font
POWERLEVEL9K_MODE='awesome-fontconfig'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export ANDROID_HOME="/Users/$USERNAME/Library/Android/sdk"
export ANDROID_BUILD_VERSION="23.0.3"
export PATH="/usr/local/sbin:/usr/local/gradle/bin:/usr/local/proguard/bin:$ANDROID_HOME/build-tools/$ANDROID_BUILD_VERSION:$ANDROID_HOME/platform-tools:$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools"
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source ./.bash_profile

# JDK Switcher - custom
function setjdk() {
  if [ $# -ne 0 ]; then
    removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
    if [ -n "${JAVA_HOME+x}" ]; then
      removeFromPath $JAVA_HOME
    fi
    export JAVA_HOME=`/usr/libexec/java_home -v $@`
    export PATH=$JAVA_HOME/bin:$PATH
  fi
}

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Configuration aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# System-wide aliases
alias wget='wget -e robots=off --no-check-certificate --referer="http://www.google.com" --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6" --header="Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5" --header="Accept-Language: en-us,en;q=0.5" --header="Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7" --header="Keep-Alive: 300"'
alias diff='colordiff -btwur'
alias scp='scp -pr'
alias mkdir='mkdir -p'
alias w='which'
alias p='ping 4.2.2.2'
alias o='open $*'
alias ls='ls -Gh'
alias du='du -h'
alias df='df -h | egrep -v "^map -hosts|^devfs"'
alias unp='perl -MO=Deparse $*'
alias f='find . | grep -P --color $*'
alias h='hexdump -C'
alias be='bundle exec'
alias pb='protoc --decode_raw'
alias ipfwdon='sudo sysctl -w net.inet.ip.forwarding=1'
alias ipfwdoff='sudo sysctl -w net.inet.ip.forwarding=0'

# Git specific aliases
alias gs='git status'
alias ga='git add $*'
alias gca='git commit -a $*'
alias push='git push origin $*'
alias pull='git pull origin $*'