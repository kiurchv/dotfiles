#!/bin/sh

printf '\n\360\237\224\275 \061\357\270\217\342\203\243\040 Login to GitHub CLI'

if ! gh auth status >/dev/null 2>&1; then
  printf '\n\n'

  gh auth login --scopes admin:public_key --web
else
  printf ' \342\234\205\n'
fi
