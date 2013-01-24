if [ "$OS_DISTRO" == "OSX" ]; then
  # Add tab completion for 'defaults read|write NSGlobalDomain'
  # Copied from https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile
  complete -W "NSGlobalDomain" defaults
fi
