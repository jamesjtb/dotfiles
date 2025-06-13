# Path to Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

zstyle ':omz:update' frequency 7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)
plugins+=(zsh-nvm)
# plugins+=(zsh-vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
alias aws-login="aws codeartifact login --tool npm --repository all-point --domain all-point-retail --domain-owner 713553022418 --namespace @all-point"
alias source-zsh="source ~/.zshrc && source $ZSH/oh-my-zsh.sh"
alias vim="nvim"
alias zshconfig="nvim ~/.zshrc && source-zsh"
alias ohmyzsh="nvim $ZSH/oh-my-zsh.sh"
alias lg="lazygit"
alias fd="fdfind"

## fuzzy cd
fcd() {
    local dir
    dir=$(fd -H --type d | fzf)
    if [ -n "$dir" ]; then
        cd "$dir"
    fi
}

## set up neovim
export PATH="$HOME/neovim/bin:$PATH"

## export environment variables
export AP_CLIENT="loverslane"
export AP_ENVIRONMENT="dev"
export AP_DATA_API_OVERRIDE="http://localhost:8081"
export AP_BYPASS_DAPI="false"
export DATABASE_URL=""
export RELATIONAL_DB_CONNECTION_STRING=""
export AP_AWS_REGION="us-east-1"
export SKIP_WEBHOOK_REGISTER=true
export AP_LOCAL=true
export AP_LOCAL_QUEUE_PATH="/home/jamesj/dev/platform/local-queue"
