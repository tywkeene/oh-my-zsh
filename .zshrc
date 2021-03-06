source /home/$USER/etc/hfsh

# Path to your oh-my-zsh installation.
export ZSH=$HOMEETC/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker cp)

source $ZSH/oh-my-zsh.sh

export TERM='xterm-256color'

# User configuration
export GOPROJ="$HOMESRC/src/go/src/github.com/tywkeene/"
export EDITOR=vim
export GOPATH="$HOMESRC/go"
export GOROOT="/usr/lib/go"

export VIMINIT="source $HOMEETC/vim/vimrc"

export GOBIN="$GOPATH/bin"
export GCCBIN="/usr/x86_64-pc-linux-gnu/gcc-bin/4.7.3"
export CUSTOMPATH="$GCCBIN:$HOMEBIN:$GOPATH:$GOBIN:/bin"
export PATH="/opt/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/opt/bin:/usr/games/bin:$CUSTOMPATH"


# export MANPATH="/usr/local/man:$MANPATH"
#

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias sl="echo 'u wot m8?'"
alias memcheck="valgrind --tool=memcheck --leak-check=full"
alias grep="/usr/bin/grep $GREP_OPTIONS"
alias glog="git log --graph --tags --decorate --stat"
alias urxvt="urxvt -fade 35"
alias hello="echo 'Hello, Lain'"
alias vi="vim"
unalias gb

unset GREP_OPTIONS
setopt no_share_history
bindkey -s "^[OM" "^M"
. /usr/lib/python3.5/site-packages/powerline/bindings/
