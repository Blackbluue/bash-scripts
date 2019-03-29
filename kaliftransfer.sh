#!/bin/sh
admin=$(grep "admin" ~/scripts/kali-ips | cut -b 7-)
host=$(grep "host" ~/scripts/kali-ips | cut -b 6-)

option=$1
file=$2

scp -o "ProxyJump admin@$admin" $file ec2-user@$host:~/
