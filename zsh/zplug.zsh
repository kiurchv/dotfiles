# Initialize zplug
source $HOME/.zplug/init.zsh

# Vendor plugins list
source $ZDOTDIR/vendor.zsh

# Local vendor plugins list
if [[ -e $ZDOTDIR/vendor.local.zsh ]]; then
  source $ZDOTDIR/vendor.local.zsh
fi

# Local plugins
for plugin in $ZDOTDIR/plugins/*; do
  zplug $plugin, from:local
done
unset plugin

# Source all
zplug load
