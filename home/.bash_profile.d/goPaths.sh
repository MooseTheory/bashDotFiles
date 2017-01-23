#!/bin/bash

if [[ "$OS_DISTRO" == "cygwin" ]]; then
  PATH=$PATH:/cygdrive/c/Go/bin
  export GOPATH="C:/dev/go"
fi

if [[ "$OS_DISTRO" == "Ubuntu" ]]; then
  export GOPATH="$HOME/go"
  export PATH=$PATH:$GOPATH/bin
  export GOROOT="/usr/local/go"
fi

if [[ "$OS_DISTRO" == "OSX" ]]; then
  export GOPATH="$HOME/go"
  export PATH=$PATH:$GOPATH/bin
  export GOROOT="/usr/local/go"
fi
