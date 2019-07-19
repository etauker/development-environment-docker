#!/bin/bash

#####################################################################
#                                                                   #
#                       SET SHELL ALIASES                           #
#                                                                   #
#####################################################################

# ===== Shared =====
# alias lsbash='ls -la ~/ | grep .bash'
# alias devi='node setup.js --install'
# alias devc='node setup.js --configure'
# alias devb='node setup.js --backup'
alias update='source ~/.bash_base'
alias lts='gsettings list-recursively | grep gnome.Terminal' # list terminal settings
alias off="poweroff"
# ===== /Shared =====

# ===== Linux =====
# alias chromium='chromium-browser &>/dev/null &'
alias ws='cd ~/projects'
# ===== /Linux =====

# ===== Windows =====
# alias ws="cd /e/My\ Projects/Git"
# ===== /Windows =====

# ===== MacOS =====
# alias subl='/Volumes/Macintosh/Applications/Programming/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
# alias atom='/Applications/Atom.app/Contents/Resources/app/atom.sh'
# alias ws='cd /Volumes/Internal-Workspace/projects'
# ===== /MacOS =====


poweroff() {
  if [[ "$*" == "-f" ]]
  then
      shutdown --poweroff now
  else
      shutdown --poweroff
  fi
}


echo '[bash_aliases] sourced successfully'
