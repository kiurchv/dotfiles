# Setup Android SDK and tools
# https://developer.android.com/tools/variables

set -x ANDROID_HOME $HOME/Library/Android/sdk

# Add tools to PATH
fish_add_path -Pa $ANDROID_HOME/emulator
fish_add_path -Pa $ANDROID_HOME/tools
fish_add_path -Pa $ANDROID_HOME/tools/bin
fish_add_path -Pa $ANDROID_HOME/platform-tools

# Explicitly add Andriod Studio to PATH to provide `studio` command
fish_add_path -P /Applications/Android\ Studio.app/Contents/MacOS $PATH
