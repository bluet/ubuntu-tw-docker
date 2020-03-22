#!/bin/bash

if [ -n "$1" ];
then
  exec "$@"
else
  lighttpd -f /etc/lighttpd/lighttpd.conf
fi
