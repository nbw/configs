# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Save history

# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups
# append history entries..
# shopt -s histappend
# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Path to your oh-my-zsh installation.
export ZSH=/Users/nwillson/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="pygmalion"
ZSH_THEME=""

# Pure (https://github.com/sindresorhus/pure)
autoload -U promptinit; promptinit

prompt pure

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case # sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Python
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

# source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

alias vim="nvim"

alias zshreload="source ~/.zshrc"

autoload -Uz compinit
compinit

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# export PATH="$(brew --prefix qt@5.5)/bin:$PATH"

# For asdf ruby
export PATH="~/.asdf/installs/ruby/:$PATH"

export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

alias myserver="ssh root@162.243.128.245"
alias glenserver="ssh root@159.203.27.109"
alias dadserver="ssh root@138.68.13.85"

# for golang
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# Syntax highlighter
alias pat="pygmentize -g -O style=colorful,linenos=1"

# Tmux Aliases
alias tn="tmux new -s"
alias ts="tmux source-file ~/.tmux.conf"
alias tj="tmux a -t"
alias tl="tmux ls"
alias tk="tmux kill-session -t"

#Tmuxinator
# source ~/.bin/tmuxinator.zsh

# Git highlighting (from upcase)
git_prompt_info() {
  current_branch=$(git current-branch 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo " %{$fg_bold[green]%}$current_branch%{$reset_color%}"
  fi
}
setopt promptsubst
export PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git_prompt_info) 山 '

# Git color stuff
# https://github.com/christoomey/dotfiles/blob/77fb4084bd3f207aace80aa93a49769a6a298ddb/zsh/cjt.zsh-theme#L44
#
# Color shortcuts
# RED=$fg[red]
# YELLOW=$fg[yellow]
# GREEN=$fg[green]
# WHITE=$fg[white]
# BLUE=$fg[blue]
# RED_BOLD=$fg_bold[red]
# YELLOW_BOLD=$fg_bold[yellow]
# GREEN_BOLD=$fg_bold[green]
# WHITE_BOLD=$fg_bold[white]
# BLUE_BOLD=$fg_bold[blue]
# RESET_COLOR=$reset_color

# # Format for git_prompt_info()
# ZSH_THEME_GIT_PROMPT_PREFIX=""
# ZSH_THEME_GIT_PROMPT_SUFFIX=""

# # Format for parse_git_dirty()
# ZSH_THEME_GIT_PROMPT_DIRTY=" %{$RED%}(*)"
# ZSH_THEME_GIT_PROMPT_CLEAN=""

# # Format for git_prompt_ahead()
# ZSH_THEME_GIT_PROMPT_AHEAD=" %{$RED%}(!)"

# # Format for git_prompt_long_sha() and git_prompt_short_sha()
# ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$WHITE%}[%{$YELLOW%}"
# ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$WHITE%}]"

# # Only display host if this is via SSH
# if [[ -n $SSH_CONNECTION ]]; then
#     sshing="%n@%m"
# else
#     sshing=""
# fi

# PROMPT='
# %{$GREEN_BOLD%}$sshing%{$WHITE%} %{$YELLOW%}${PWD/#$HOME/~}%{$RESET_COLOR%} \
# %{$GREEN%}$(git rev-parse --abbrev-ref HEAD 2> /dev/null)$(git_prompt_short_sha)$(parse_git_dirty)%{$RESET_COLOR%}
# %(?.%{$fg[green]%}.%{$fg[red]%})%B$%b '
# # RPROMPT='[%{$GREEN%}$(ruby --version | cut -d " " -f 2)%{$WHITE%}]'
#
#
alias weather='curl -4 wttr.in/'

alias bspec='bundle exec rspec'
alias brails='bundle exec rails'

alias h="htop"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
