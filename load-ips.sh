#!/bin/sh
admin=$(grep "admin" ~/scripts/kali-ips | cut -b 7-)
host=$(grep "host" ~/scripts/kali-ips | cut -b 6-)
if [[ $1 == "admin" ]]; then
  admin
fi
