if [ "$OS_DISTRO" == "Ubuntu" ]; then
  alias install="sudo apt-get install"
  alias update="sudo apt-get update"
  alias upgrade="sudo apt-get upgrade"
  alias canhaz="aptitude search"
fi
