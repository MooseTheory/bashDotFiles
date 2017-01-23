if [ "$OS_DISTRO" == "OSX" ]; then
  alias update="brew update"
  alias upgrade="brew upgrade"
  alias canhaz="brew search"

  # Enable homebrew autocomplete
  source `brew --prefix`/etc/bash_completion.d/brew

  # Add paths that homebrew wants before OSX's default path.
  export PATH=/usr/local/bin:/usr/local/sbin:$PATH
fi
