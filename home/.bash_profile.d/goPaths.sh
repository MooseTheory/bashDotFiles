#!/bin/bash

if [[ "$OS_DISTRO" == "cygwin" ]]; then
  PATH=$PATH:/cygdrive/c/Go/bin
  export GOPATH="C:/dev/go"
fi

if [[ "$OS_DISTRO" == "Ubuntu" ]]; then
  export GOPATH="$HOME/go"
  export GOROOT="/usr/local/go"
fi
