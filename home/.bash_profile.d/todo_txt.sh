# Set todo.txt's default action to list.
export TODOTXT_DEFAULT_ACTION=ls

case "$OS_DISTRO" in
  'Ubuntu')
    alias t="$HOME/bin/todo.txt/todo.sh -d $HOME/bin/todo.txt/todo.cfg"
    ;;
  'Arch')
    ;;
  'OSX')
    # Auto-complete for todo.txt
    if [ -f /usr/local/Cellar/todo-txt/2.9/todo_completion ] && ! shopt -oq posix; then
      . /usr/local/Cellar/todo-txt/2.9/todo_completion
    fi

    alias t='todo.sh'
    ;;
esac
