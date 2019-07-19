#!/bin/bash

#####################################################################
#                                                                   #
#                       SET SHELL ALIASES                           #
#                                                                   #
#####################################################################

# ===== Aliases =====
alias update='source ~/.bash_base'
alias lts='gsettings list-recursively | grep gnome.Terminal' # list terminal settings
alias off="poweroff"
alias ws='cd ~/projects'


# ===== Functions =====
poweroff() {
  if [[ "$*" == "-f" ]]
  then
      shutdown --poweroff now
  else
      shutdown --poweroff
  fi
}


echo '(OK) bash aliases sourced successfully'
