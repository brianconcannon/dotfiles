## .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

## User specific aliases and functions

# set up common env vars between bourne shells
source $HOME/.commonenv

# set up common aliases between bourne shells
source $HOME/.commonrc

# uncomment the following line to use vi mode
#set -o vi

# make TAB cycle through the list of partial matches!
#bind -m vi-insert TAB:menu-complete
# uncomment the following to use ctrl+a and ctrl+e
# to go to the beginning and end of the line
#bind -m vi-insert "\C-a":beginning-of-line
#bind -m vi-insert "\C-e":end-of-line
# ^n cycle through the list of partial matches
#bind -m vi-insert "\`":menu-complete


# history settings
export HISTFILE=$HOME/.bash_history
export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTFILESIZE=1000
# don't clear the history each time
shopt -s histappend

# Set up the prompt

# Only show user in the prompt if it isn't yourself
# Make sure and set the $ME var
PR_IMPOSTER=""

PS1="$PR_IMPOSTER\n\d \A | \w\n\h\$ "

# load up server specific extras
source ~/.bash_extras
