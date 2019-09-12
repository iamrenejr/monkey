export PATH="$HOME/.cargo/bin:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=~/Library/Android/sdk/
export PATH=$PATH:~/Library/Android/sdk/platform-tools/
export PATH=$PATH:~/Library/Android/sdk/tools/
export EDITOR=vim
export TERM=screen-256color

alias e='exit'
alias c='clear'
alias l='ls -llarth'
alias v='vi'
alias relb='source ~/.bash_profile'
alias eb='v ~/.bash_profile && relb'
alias ev='v ~/.vimrc'
alias relt='tm source-file ~/.tmux.conf'
alias reltr='tm source-file ~/.tmux.remote.conf'
alias et='v ~/.tmux.conf && relt'
alias etr='v ~/.tmux.remote.conf && reltr'
alias tm='tmux -u -2'
alias g='git'
alias eg='v ~/.gitconfig'
alias gfp='g f && g pl'

# Android
alias android_remote_menu='adb shell input keyevent 82'

# Mac: Disable keyboard
alias disable_keyboard='sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/'
alias enable_keyboard='sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/'

# fastlane
alias fl='bundle exec fastlane read_dev_cert'

export NVM_DIR="/Users/jorencalunsag/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# fzf via Homebrew
if [ -e /usr/local/opt/fzf/shell/completion.bash ]; then
  source /usr/local/opt/fzf/shell/key-bindings.bash
  source /usr/local/opt/fzf/shell/completion.bash
fi

# fzf via local installation
if [ -e ~/.fzf ]; then
  _append_to_path ~/.fzf/bin
  source ~/.fzf/shell/key-bindings.bash
  source ~/.fzf/shell/completion.bash
fi

# fzf + ag configuration
if [ -x "$(command -v fzf)" ] && [ -x "$(command -v ag)" ]; then
  export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_DEFAULT_OPTS='
  --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
  '
fi
