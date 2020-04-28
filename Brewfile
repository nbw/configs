# install packages
#
# specify a directory to install
cask_args appdir: '/Applications'

# tap 'homebrew/cask-cask' || true
tap "homebrew/bundle"
tap "homebrew/core"

brew "cask"

# System Deps
brew "autoconf"
brew "automake"
brew 'bash-completion'
brew "coreutils"
brew "curl"
brew "ctags"
brew "gettext"
brew 'git'
brew "gpg2"
brew "imagemagick"
brew "libpng"
brew "libtool"
brew "libevent"
brew "libffi"
brew "libyaml"
brew "libxml2"
brew "libxslt"
brew "openssl"
brew "readline"
brew "unixodbc"
brew "wget"

# Tools
brew "htop-osx"
brew "ssh-copy-id"
brew "the_silver_searcher"
brew "tmux"
brew "reattach-to-user-namespace"
brew "z"

# Runtime Switchers
brew "asdf"

# Services
tap "heroku/brew"
brew "heroku"
brew "hub"
brew "s3cmd"
brew "awsebcli"

# Databases
#cask "postgres" # prefer Postgres.app
brew "mysql", restart_service: true
brew "redis"
# brew "mongodb"
brew "memcached"
# brew "elasticsearch"
cask "postgres"

# editor
tap 'neovim/neovim' || true
brew 'neovim'
cask 'visual-studio-code'

# Applications
cask '1password'
cask 'bettertouchtool'
cask 'docker'
cask 'dropbox'
cask 'fantastical'
cask 'google-chrome'
cask 'insomnia'
cask 'iterm2'
cask 'slack'
