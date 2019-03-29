#!/bin/sh
ssh-add ~/Documents/student-13
admin=$(grep "admin" ~/scripts/kali-ips | cut -b 7-)
host=$(grep "host" ~/scripts/kali-ips | cut -b 6-)

#load bash_aliases
scp -o "ProxyJump admin@$admin" ~/.kali_bash_aliases  ec2-user@$host:~/.bash_aliases
#load metasploit easy startup script
ssh -J admin@$admin ec2-user@$host mkdir -p scripts/bash/
scp -o "ProxyJump admin@$admin" ~/scripts/bash/metasploit.sh ec2-user@$host:~/scripts/bash/metasploit.sh
#connect to kali
ssh -J admin@$admin ec2-user@$host
