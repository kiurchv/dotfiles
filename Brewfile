# Essentials
tap "thoughtbot/formulae"
brew "rcm"
brew "zsh"

# Build dependencies
brew "automake"
brew "autoconf"
brew "openssl", args: ["without-test"]
brew "libyaml"
brew "readline"
brew "ncurses" if `uname -s` =~ /Linux/
brew "libxslt"
brew "libtool"
brew "libffi" if `uname -s` =~ /Linux/
brew "unixodbc"

# Utils
brew "coreutils" unless system "hash dircolors >/dev/null 2>&1"
brew "the_silver_searcher"
tap "jhawthorn/fzy"
brew "fzy"
tap "homebrew/command-not-found"
brew "thefuck"

# Editors
brew "vim", args: ["with-custom-python", "with-custom-ruby"]

# Miscellaneous
brew "yarn"
