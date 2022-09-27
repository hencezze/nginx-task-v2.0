#!/bin/bash

a=$(docker exec -it nginx echo " " |  openssl s_client -connect henceze.online:443 -servername henceze.online 2> /dev/null | openssl x509 -noout -dates | tr '=' ' ' | grep After | awk '{print $2}')
b=$(docker exec -it nginx date | awk '{print $2}')
if [[ $a == $b ]]
then
echo "One mount before the end of sertificate"
fi

exit
