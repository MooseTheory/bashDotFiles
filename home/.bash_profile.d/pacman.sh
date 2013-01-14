if [ "$OS_DISTRO" == "Arch" ]; then
  alias install="sudo pacman -S"
  alias update="sudo pacman -Sy"
  alias upgrade="sudo pacman -Syu"
  alias canhaz="pacman -Ss"
fi
