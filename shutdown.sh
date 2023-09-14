#!/usr/bin/env bash
while [ ! -f /tmp/shutdown ] # <-- created by 99_stop.sh
do
  sleep 2
done
kill $(pidof mysqld)
