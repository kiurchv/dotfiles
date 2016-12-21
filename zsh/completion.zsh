# Essentials

# Load vendor completions on Linux if not loaded by default
if [[ "$OSTYPE" == 'linux-gnu' ]]; then
  vendor_compdir='/usr/share/zsh/vendor-completions'
  [[ $fpath[(r)$vendor_compdir] != $vendor_compdir ]] && fpath+=$vendor_compdir
  unset vendor_compdir
fi

# Load local completions
if [[ -d $ZDOTDIR/completions ]]; then
  fpath+=$ZDOTDIR/completions
fi

# Load internal completion utils
zmodload zsh/complist

# Caching

# Enable cache
zstyle ':completion::complete:*' use-cache true

# Selection

# Enable menu selection
zstyle ':completion:*:*:*:*:*' menu select
# Display prompt during menu selection when the completion list does not fit on the screen as a whole
zstyle ':completion:*' select-prompt '%S Scrolling active: current selection at %B%p%b %s'
# Leave menu selection by pressing Esc key
bindkey -M menuselect '\e' send-break

# Matching and corrections

# Enable case- and hyphen-insensitive matching falling to partial-word and substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# Completer functions to use
zstyle ':completion:*' completer _complete _match _ignored _correct _approximate
# Compare completions with pattern when wildcard characters entered
zstyle ':completion:*:match:::' original only
# Generate corrections for the current word accepting up to two errors
zstyle ':completion:*:correct:::' max-errors 2 not-numeric
# Approximate completions accepting one error per three characters if no other specified by numeric prefix
zstyle ':completion:*:approximate:::' 'reply=( $(( ($#PREFIX+$#SUFFIX)/3 )) numeric )'
# Don't complete functions which names starting with underscore
zstyle ':completion:*:functions' ignored-patterns '_*'
# Don't complete uninteresting users
zstyle ':completion:*:users' ignored-patterns \
        adm amanda apache at avahi avahi-autoipd beaglidx bin cacti canna \
        clamav daemon dbus distcache dnsmasq dovecot fax ftp games gdm \
        gkrellmd gopher hacluster haldaemon halt hsqldb ident junkbust kdm \
        ldap lp mail mailman mailnull man messagebus  mldonkey mysql nagios \
        named netdump news nfsnobody nobody nscd ntp nut nx obsrun openvpn \
        operator pcap polkitd postfix postgres privoxy pulse pvm quagga radvd \
        rpc rpcuser rpm rtkit scard shutdown squid sshd statd svn sync tftp \
        usbmux uucp vcsa wwwrun xfs '_*'
# Display but don't insert ignored matches when there is only one match
zstyle ':completion:*' single-ignored show
# Complete processes belonging to current user and root. Show pid, username and command
zstyle ':completion:*:processes' command 'ps -u "$USER root" -o pid,user,command -w -w'
# Complete names of processes belonging to current user and root
zstyle ':completion:*:processes-names' command 'ps -c -u "$USER root" -o command | uniq'
# Search path for sudo completion
zstyle ':completion:*:sudo:*' command-path \
        /usr/local/sbin \
        /usr/local/bin  \
        /usr/sbin       \
        /usr/bin        \
        /sbin           \
        /bin            \
        /usr/X11/bin

# Formatting

# Force all completion functions to generate matches in the verbose form
zstyle ':completion:*' verbose true
# Group matches using tags as names for groups
zstyle ':completion:*' group-name ''
# Format descriptions
zstyle ':completion:*:descriptions' format '%F{yellow}%B%d%b%f'
# Format corrections
zstyle ':completion:*:corrections' format '%F{yellow}%B%d%b%f (errors: %e)'
# Format messages
zstyle ':completion:*:messages' format '%F{yellow}%B%d%b%f'
# Format warnings
zstyle ':completion:*:warnings' format '%F{red}%BNo matches found%b%f'
# Group man matches by sections
zstyle ':completion:*:manuals' separate-sections true
# Directory list colors
if [[ ! -v LS_COLORS ]]; then
  # Try to set $LS_COLORS if not already set
  # requires GNU coreutils to be installed
  if (( $+commands[gdircolors] )); then
    # Use colors from GNU coreutils installed with homebrew
    eval "$(gdircolors -b)"
  else
    # Use colors from GNU coreutils
    eval "$(dircolors -b)"
  fi
fi
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# Custom colors for kill
zstyle ':completion:*:*:kill:*:processes' list-colors \
        "=(#b) #([0-9]#) ([0-9a-z-]#)*=$color[bold];$color[red]=$color[none]=$color[bold]"

# Miscellaneous customizations

zstyle ':completion:*:ssh:*' group-order users hosts
zstyle ':completion:*:(scp|rsync):*' group-order files all-files users hosts
