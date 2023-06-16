#!/bin/sh

# Determine fish location
FISH=`which fish`

# Detect user's current login shell
USER_SHELL=$(\
  [ `uname -s` = 'Darwin' ]\
  && dscl localhost -read /Local/Default/Users/$USER UserShell | awk '{print $2;}'\
  || getent passwd $USER | cut -d: -f7\
)

if [ ! "$USER_SHELL" = "$FISH" ]; then
  # Add fish to /etc/shells if not present
  if ! grep -q "$FISH\$" /etc/shells; then
    echo `which fish` | sudo tee -a /etc/shells
  fi

  # Change user's login shell
  echo "Current shell is $USER_SHELL, changing to $FISH"
  chsh -s "$FISH"

  # Install fisher package manager
  fish -c 'curl -sL https://git.io/fisher | source'
fi
