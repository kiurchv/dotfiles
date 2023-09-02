#!/bin/sh

printf '\nSetup XCode\n\n'

sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -license accept
