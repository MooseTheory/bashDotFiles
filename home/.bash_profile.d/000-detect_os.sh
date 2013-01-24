#!/bin/bash

# Attempt to detect the current OS.
if [ -f /etc/lsb_release ]; then
  . /etc/lsb_release
  export OS_DISTRO=$DISTRIB_ID
  export OS_VERSION=$DISTRIB_RELEASE
elif [ -f /etc/lsb-release ]; then
  . /etc/lsb-release
  export OS_DISTRO=$DISTRIB_ID
  export OS_VERSION=$DISTRIB_RELEASE
elif [ -f /etc/arch-release ]; then
  export OS_DISTRO="Arch"
  export OS_VERSION="Rolling"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  export OS_DISTRO="OSX"
  export OS_VERSION="Unknown"
fi
