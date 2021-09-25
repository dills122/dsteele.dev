#!bin/bash

ssh "$1"@"$2" "rm -r /var/www/html/*"
scp -r ./_site/* "$1"@"$2":/var/www/html
