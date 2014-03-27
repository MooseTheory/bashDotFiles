#!/bin/bash

if [[ "$OS_DISTRO" == "cygwin" ]]; then
  PATH=$PATH:/cygdrive/c/Go/bin
  export GOPATH="C:/dev/go"
fi
