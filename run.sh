#!/bin/bash

set -e

if [ ! -f /config/mirror.list ]; then
  cp /etc/apt/mirror.list.default /config/mirror.list
fi

if [ "$CONFIG_ONLY" == "true" ]
then
  exit 0;
fi

/usr/bin/apt-mirror
