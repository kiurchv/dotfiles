# Essentials
zplug "mafredri/zsh-async"

# Common
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/thefuck", from:oh-my-zsh

# History
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search", defer:3

# Prompt
zplug "sindresorhus/pure", on:"mafredri/zsh-async"

# Utils
zplug "supercrabtree/k"
zplug "b4b4r07/enhancd", use:init.sh
zplug "plugins/extract", from:oh-my-zsh

# Completions
zplug "zsh-users/zsh-completions"

# Package and runtime managers
zplug "joshuarubin/zsh-linuxbrew"
zplug "kiurchv/asdf.plugin.zsh", defer:2

# Git
zplug "plugins/git", from:oh-my-zsh
zplug "voronkovich/gitignore.plugin.zsh"

# DevOps
# zplug "kiurchv/docker-for-mac.plugin.zsh"
zplug "plugins/aws", from:oh-my-zsh
zplug "plugins/heroku", from:oh-my-zsh

# JS
zplug "maxmellon/yarn_completion"

# Ruby
zplug "plugins/rake-fast", from:oh-my-zsh
zplug "plugins/rails", from:oh-my-zsh

# Elixir
zplug "plugins/mix-fast", from:oh-my-zsh
zplug "gusaiani/elixir-oh-my-zsh"
