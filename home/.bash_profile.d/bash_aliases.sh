# Recursively remove DS_STORE files.
alias cleanup="find . -type f -name '*.DS_STORE' -ls -delete"

# Add an 'alert' alias for long running commands. Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Clear the screen and ls.
alias cls="clear && ls"

# Change directory and ls.
function cs() {
  cd "$@" && ls
}
