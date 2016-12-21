# Dotfiles

Configs for the local development environment.

## What's included

* [zsh](https://www.zsh.org) with minimalistic config which includes: [options](zsh/options.zsh), [aliases](zsh/aliases.zsh), [functions](zsh/functions.zsh), [exported variables](zsh/variables.zsh), [completion](zsh/completion.zsh) and [history](zsh/history.zsh) settings.
* [zplug](https://github.com/zplug/zplug) plugin manager for zsh with [pure](https://github.com/sindresorhus/pure), [zsh-completions](https://github.com/zsh-users/zsh-completions), [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions), [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search), [k](https://github.com/supercrabtree/k), [enhancd](https://github.com/b4b4r07/enhancd) and [others](zsh/vendor.zsh).
* [asdf](https://github.com/asdf-vm/asdf) — extendable runtime version manager
* [vim](https://github.com/vim/vim) text editor
* [vim-plug](https://github.com/junegunn/vim-plug) — minimalist plugin manager for vim with [CtrlP](https://github.com/ctrlpvim/ctrlp.vim), [airline](https://github.com/vim-airline/vim-airline), [YouCompleteMe](https://github.com/Valloric/YouCompleteMe), [Syntastic](https://github.com/vim-syntastic/syntastic), [delimitMate](https://github.com/Raimondi/delimitMate) and [others](vimrc.plugins).
* [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) code searching tool
* [Yarn](https://github.com/yarnpkg/yarn) — fast, reliable, and secure node package manager

## Requirements

These configs designed for use on macOS or Linux (Windows Subsystem for Linux also supported).

## Installation

#### Clone this repository

```shell
git clone git@github.com:mkyurchev/dotfiles.git ~/.dotfiles
```

#### Install dependencies

[Homebrew](http://brew.sh) or [Linuxbrew](http://linuxbrew.sh)(don't forget to include `~/.linuxbrew/bin` to `PATH`) required to install dependencies.

If you are on Linux you should install Python headers:

```shell
# For Debian, Ubuntu and Windows Subsystem for Linux:
sudo apt install python-dev

# Or for Fedora, CentOS and Red Hat:
sudo yum install python-devel
```

If you are running under Windows Subsystem for Linux you should set `HOMEBREW_BUILD_FROM_SOURCE` environment variable to force build packages from source:

```shell
export HOMEBREW_BUILD_FROM_SOURCE=1
```

Install the bundle:

```shell
brew bundle --file=$HOME/.dotfiles/Brewfile
```

#### Link dotfiles

```shell
RCRC=$HOME/.dotfiles/rcrc rcup
```

After this you will be able to link dotfiles by running `rcup` without setting the one-time variable `RCRC` and install dependencies from `~/.dotfiles/Brewfile` with `brew bundle --global`.

Also after linking dotfiles will be installed [asdf](https://github.com/asdf-vm/asdf) and [vim-plug](https://github.com/junegunn/vim-plug) with vim plugins.
