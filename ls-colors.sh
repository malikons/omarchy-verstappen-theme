#!/bin/bash
# Verstappen Theme - Dutch Flag ls/eza colors
# Red (permissions) | White (user) | Blue (filename)

# Dutch flag colors
DUTCH_RED="31"      # ANSI code for red
DUTCH_WHITE="37"    # ANSI code for white  
DUTCH_BLUE="34"     # ANSI code for blue

# Build EZA_COLORS for Dutch flag theme
# Format: key=value;key=value where value is ANSI SGR code
# Permission bits in red
# User/group in white
# Filenames in blue
# Other elements use theme colors

export EZA_COLORS="\
ur=${DUTCH_RED}:\
uw=${DUTCH_RED}:\
ux=${DUTCH_RED}:\
ue=${DUTCH_RED}:\
gu=${DUTCH_RED}:\
gw=${DUTCH_RED}:\
gx=${DUTCH_RED}:\
gt=${DUTCH_RED}:\
gr=${DUTCH_WHITE}:\
gw=${DUTCH_WHITE}:\
gx=${DUTCH_WHITE}:\
us=${DUTCH_WHITE}:\
gs=${DUTCH_WHITE}:\
fi=${DUTCH_BLUE}:\
di=1;${DUTCH_BLUE}:\
ln=1;36:\
pi=33:\
so=35:\
bd=1;33:\
cd=1;33:\
or=31:\
ex=1;32:"

# Also set LS_COLORS for standard ls compatibility
export LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=00:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:"

# Create alias for ls to use eza with Dutch flag theme
alias ls='eza --color=always --color-scale'
alias la='eza --color=always --color-scale -a'
alias ll='eza --color=always --color-scale -la'
alias l='eza --color=always --color-scale -F'
