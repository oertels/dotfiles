export ZSH=$HOME/.oh-my-zsh

# zsh settings
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status history time)

CASE_SENSITIVE="false"
DISABLE_AUTO_UPDATE="false"

DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="false"

plugins=(git django vi-mode)

bindkey -v
bindkey '^R' history-incremental-search-backward

# Aliases
alias zshconfig="vim $HOME/.zshrc"
alias ohmyzsh="vim $HOME/.oh-my-zsh"

# Exports
export ANDROID_SDK_ROOT=/home/so/bin/android-studio/sdk
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH
export PATH="$HOME/.oh-my-zsh/custom/plugins:$PATH"
export JAVA_HOME=/opt/jdk1.7.0_15/
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/workspace
export PATH="$HOME/bin/android-studio/sdk/tools:$HOME/bin/android-studio/sdk/platform-tools:$HOME/bin/android-studio/sdk:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/sbin:/bin:/usr/local/packer"
export ARCHFLAGS="-arch x86_64"
export UPDATE_ZSH_DAYS=13

# Sources
source $ZSH/oh-my-zsh.sh
source $HOME/bin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source `which virtualenvwrapper.sh`

