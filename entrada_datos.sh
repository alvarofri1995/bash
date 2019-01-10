#!/bin/bash

clear
echo -e "Ip or host (localhost default) \c"
read host
echo " Can you enter domain name example (alvaro es)"
read dc1 dc2
echo "your domain name is dc=$dc1,dc=$dc2"
base="dc="$dc1",dc="$dc2
echo $base
echo $host
# -a makes read command to read into an array

echo "what are your OU's?"
read -a ou

echo "your OU are ${ou[0]} ${ou[1]} ${ou[2]} ${ou[3]}..."

ldapsearch -x -H ldap://$host -b $base 2> /dev/null

