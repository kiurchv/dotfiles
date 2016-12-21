# Directory list with colors
# requires GNU coreutils to be installed
if (( $+commands[gls] )); then
  # GNU ls installed with homebrew
  alias ls='command gls --color=auto'
else
  # GNU ls
  alias ls='command ls --color=auto'
fi

# Make directories creating intermediate directories as required
alias mkdir='command mkdir -p'

# Cause ln and cp to be verbose, showing files as they are processed
alias ln='command ln -v'
alias cp='command cp -v'

# Directory list in long format with unit suffixes with all entries except for . and ..
alias la='ls -lAh'

# Directory list by k with unit suffixes with all entries except for . and ..
alias ka='k -Ah'

# Editor shortcuts
alias e=$EDITOR
alias v=$VISUAL

# Pretty print the PATH
alias path='echo $PATH | tr -s ":" "\n"'
