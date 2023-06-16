#!/bin/sh

if ! gh auth status; then
  gh auth login --scopes admin:public_key --web
fi
