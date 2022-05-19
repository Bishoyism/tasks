#!/bin/sh

echo "Follow redirect? [Enter y for yes]: "

read redirect

if [[ "$redirect" == "y" ]] ;

then 

response=$(curl -L --write-out '%{http_code}' --silent --output /dev/null $1)

else

response=$(curl --write-out '%{http_code}' --silent --output /dev/null $1)

fi

echo "Response Code: $response from server $1"