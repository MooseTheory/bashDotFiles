if [ "$OS_DISTRO" == "OSX" ]; then
  alias update="brew update"
  alias upgrade="brew upgrade"
  alias canhaz="brew search"

  # Enable homebrew autocomplete
  source `brew --prefix`/Library/Contributions/brew_bash_completion.sh

  # Add paths that homebrew wants before OSX's default path.
  export PATH=/usr/local/bin:/usr/local/sbin:$PATH
fi
