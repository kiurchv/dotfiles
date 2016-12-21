# Executable search paths

# Local binaries
if [[ -d $HOME/bin ]]; then
  export PATH="$HOME/bin:$PATH"
fi
# Yarn binaries
if (( $+commands[yarn] )); then
  export PATH="$PATH:$(yarn global bin)"
fi

# Editors

# Command-line editor
export EDITOR='vim'
# Graphical editor
export VISUAL='atom'

# Miscellaneous

# Golang workspace
export GOPATH=$HOME
