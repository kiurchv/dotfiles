# Directories

# If a command is issued that can’t be executed as a normal command, and the command is the name of a directory, perform the cd command to that directory
setopt auto_cd
# Make cd push the old directory onto the directory stack
setopt auto_pushd
# Don’t push multiple copies of the same directory onto the directory stack
setopt pushd_ignore_dups
# Exchanges the meanings of ‘+’ and ‘-’ when used with a number to specify a directory in the stack
setopt pushd_minus

# Completion

# When completing from the middle of a word, move the cursor to the end of the word
setopt always_to_end
# Automatically use menu completion after the second request for completion
setopt auto_menu
# If the cursor is inside a word, completion is done from both ends
setopt complete_in_word
# Prevent autoselect the first completion entry
unsetopt menu_complete

# History

# Append history list to the history file, rather than replace it
setopt append_history
# Save each command’s beginning timestamp and the duration to the history file
setopt extended_history
# When trimming history, lose oldest duplicates first
setopt hist_expire_dups_first
# If a new command line being added to the history list duplicates an older one, the older command is removed from the list
setopt hist_ignore_all_dups
# Remove command lines from the history when the it or one of the expanded aliases begins with a space
setopt hist_ignore_space
# Perform history expansion and reload the line into the editing buffer instead of executing it
setopt hist_verify
# Add new history lines as soon as they are entered rather than waiting until the shell exits
setopt inc_append_history
# Import new commands from the history file allowing to share history between simultaneously running sessions
setopt share_history


# Input/Output

# Try to correct the spelling of commands
setopt correct
# Disable spelling correction for arguments
unsetopt correct_all
# Disable output flow control via start/stop characters
unsetopt flow_control
# Allow comments even in interactive shells
setopt interactive_comments

# Job Control

# List jobs in the long format by default
setopt long_list_jobs

# Prompting

# Enable parameter expansion, command substitution and arithmetic expansion in prompts
setopt prompt_subst

# Scripts and Functions

# Perform implicit tees or cats when multiple redirections are attempted
setopt multios

# Zle

# Avoid to beep on errors in zsh command line editing
unsetopt beep
