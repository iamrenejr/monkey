# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$PATH:/usr/local/mysql/bin

# Path to your oh-my-zsh installation.
export ZSH="/Users/renecalunsag/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	fzf
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export DEFAULT_USER="$(whoami)"
alias relz='source ~/.zshrc'
alias ez='v ~/.zshrc && relz'
alias getlayout='tmux list-windows -F "#{window_active} #{window_layout}" | grep "^1" | cut -d " " -f 2'

POWERLEVEL9K_MODE="awesome-patched"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim -v'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# From .bash_profile
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=~/Library/Android/sdk/
export PATH=$PATH:~/Library/Android/sdk/platform-tools/
export PATH=$PATH:~/Library/Android/sdk/tools/
export TERM=screen-256color

alias e='exit'
alias c='clear'
alias l='ls -llarth'
alias v='mvim -v -c ":NERDTreeToggle"'
alias vdb='mvim -v -c ":DBUI"'
alias relb='source ~/.bash_profile'
alias eb='v ~/.bash_profile && relb'
alias ev='v ~/.vimrc'
alias relt='tm source-file ~/.tmux.conf'
alias et='v ~/.tmux.conf && relt'
alias tm='tmux -u -2'
alias g='git'
alias eg='v ~/.gitconfig'
alias gfp='g f --all && g pl'
alias mux='tmuxinator'
alias glog='g log'
alias gcl='g co -- . && g clean --force'
alias rndelete='rm -rf node_modules && rm -rf package-lock.json && cd ios && rm -rf Podfile.lock && rm -rf Pods && cd ..'
alias rninstall='npm i && cd ios && pod install && cd ..'
alias rnreset='rndelete && rninstall'
alias grev='g revert --no-edit'

# Set fzf installation directory path
export FZF_BASE=/usr/local/bin/fzf

# Android
alias android_remote_menu='adb shell input keyevent 82'

# fastlane
alias fl='bundle exec fastlane read_dev_cert --env rnd'

# This loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# PyEnv
export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export NVM_DIR="/Users/renecalunsag/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Make command history unforgettable
HISTFILESIZE=10000000

# Functions defined here. NO MORE ALIASES AFTER THIS POINT
chist () {
	if [ $# -eq 0 ]
	then
		history | less
	else
		history | grep "$1" | less
	fi
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
