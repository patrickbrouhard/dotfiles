# Omarchy environment (OMARCHY_PATH + PATH), needed even for non-interactive shells
[[ -r /usr/share/omarchy/default/bash/env-bootstrap ]] && source /usr/share/omarchy/default/bash/env-bootstrap

# If not running interactively, don't do anything else (leave this above the rc source)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source "$OMARCHY_PATH/default/bash/rc"

#######################################################
# ALIASES
#######################################################

# List
alias la='ls -a' # List All
alias lof='ls -f' # List Only Files
alias lod='ls -D' # List Only Directories

# Wayland input debugging
alias wevk='wev -f wl_keyboard:key'
