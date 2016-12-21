if [[ -f $ZDOTDIR/.zshrc.local ]]; then
  source $ZDOTDIR/.zshrc.local
fi

source $ZDOTDIR/history.zsh
source $ZDOTDIR/completion.zsh

source $ZDOTDIR/zplug.zsh

source $ZDOTDIR/options.zsh

source $ZDOTDIR/exports.zsh
if [[ -f $ZDOTDIR/exports.local.zsh ]]; then
  source $ZDOTDIR/exports.local.zsh
fi

source $ZDOTDIR/aliases.zsh
if [[ -f $ZDOTDIR/aliases.local.zsh ]]; then
  source $ZDOTDIR/aliases.local.zsh
fi

source $ZDOTDIR/functions.zsh
if [[ -f $ZDOTDIR/functions.local.zsh ]]; then
  source $ZDOTDIR/functions.local.zsh
fi
