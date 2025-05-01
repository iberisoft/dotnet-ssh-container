#!/bin/bash

if [ -z "$DEVUSER_PASSWORD" ]; then
  echo "Error: DEVUSER_PASSWORD is not defined"
else
  echo "Setting a password for devuser"
  echo "devuser:$DEVUSER_PASSWORD" | chpasswd
fi

exec /usr/sbin/sshd -D
