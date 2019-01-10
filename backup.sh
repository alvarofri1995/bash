#|/bin/bash

user=$(whoami)
input=/home/$user

#prueba nombre fichero
fin="_home"
mifile=$user$fin
echo $mifile
# fin de prueba

output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz
echo $input
echo $output
tar -czf  $output $input 2> /dev/null
