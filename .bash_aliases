# Detect the OS version (hopefully)
if [ -f /etc/lsb_release ]; then
  . /etc/lsb_release
  osDistro=$DISTRIB_ID
  osVersion=$DISTRIB_RELEASE
elif [[ "$OSTYPE" == "darwin"* ]]; then
  osDistro="OSX"
  osVersion="Unknown"
fi

case "$osDistro" in
  'Ubuntu')
    alias t='/home/moosetheory/bin/todo.txt/todo.sh -d /home/moosetheory/bin/todo.txt/todo.cfg'
    alias install='sudo apt-get install'
    alias update='sudo apt-get update'
    alias upgrade='sudo apt-get upgrade'
    alias canihaz='aptitude search'
    ;;
  'OSX')
# OSX specific aliases.
    alias t='todo.sh'
    ;;
  *)
    ;;
esac

# Aliases for all the things.
alias sudo='sudo '

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_STORE' -ls -delete"
