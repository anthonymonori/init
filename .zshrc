# Set default username
export USERNAME="antalmonori"

# Path to your oh-my-zsh installation.
export ZSH="/Users/$USERNAME/.oh-my-zsh"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export ANDROID_HOME="/Users/$USERNAME/Library/Android/sdk"
export ANDROID_BUILD_VERSION="30.0.0-rc2"
export PATH="/usr/local/sbin:/usr/local/gradle/bin:/usr/local/proguard/bin:$ANDROID_HOME/build-tools/$ANDROID_BUILD_VERSION:$ANDROID_HOME/platform-tools:$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin"
export MANPATH="/usr/local/man:$MANPATH"

##############################################################################
source $ZSH/oh-my-zsh.sh
source ~/.bash_profile
##############################################################################

# shortened URL expander
function expandit() {
  wget --server-response $1 2>&1 | grep "^Location"; 
}

### Install JDK 1.6, 1.8 and 1.7 or any particular version that you would like
### Place this into your favorite shell console's rc file (eg. .bashrc, .zshrc, etc.)
### Reopen shell window

### Use: setjdk 1.<x>

# ➜  ~  java -version
#       java version "1.8.0_20"
#       Java(TM) SE Runtime Environment (build 1.8.0_20-b26)
#       Java HotSpot(TM) 64-Bit Server VM (build 25.20-b23, mixed mode)
# ➜  ~  setjdk 1.7
# ➜  ~  java -version
#       java version "1.7.0_79"
#       Java(TM) SE Runtime Environment (build 1.7.0_79-b15)
#       Java HotSpot(TM) 64-Bit Server VM (build 24.79-b02, mixed mode)

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
function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
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
alias swagger='docker run -d -p 80:8080 swaggerapi/swagger-editor'

# Git specific aliases
alias gs='git status'
alias ga='git add $*'
alias gca='git commit -a $*'
alias push='git push origin $*'
alias pull='git pull origin $*'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ~/.bash_aliases

# Kill all running containers.
alias dockerkillall='docker kill $(docker ps -q)'

# Delete all stopped containers.
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'

# Delete all untagged images.
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'

# Delete all stopped containers and untagged images.
alias dockerclean='dockercleanc || true && dockercleani'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

# The next line updates PATH for the Google Cloud SDK.
if [ -f "/Users/$USERNAME/Desktop/google-cloud-sdk/path.zsh.inc" ]; then . "/Users/$USERNAME/Desktop/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "/Users/$USERNAME/Desktop/google-cloud-sdk/completion.zsh.inc" ]; then . "/Users/$USERNAME/Desktop/google-cloud-sdk/completion.zsh.inc"; fi