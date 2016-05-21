Dotfiles
========

Configs for various things.

Dependencies
------------

I use zsh as default shell and my shell config based on [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) framework.

```
curl -L http://install.ohmyz.sh | sh
```

Dotfiles are managed by [rcm](https://github.com/thoughtbot/rcm):

```
brew tap thoughtbot/formulae
brew install rcm
```

Installation
------------

Clone this repository:

```
git clone git@github.com:mkyurchev/dotfiles.git .dotfiles
```

Install dotfiles:

```
env RCRC=$HOME/.dotfiles/rcrc rcup
```
