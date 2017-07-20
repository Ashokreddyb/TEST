#!/bin/bash

grep [A-Z] index.html
if [ $? -ne 0 ]
then
	echo "please enter index.html content in CAPITALS, now exiting"
	exit 1
else
	ssh ubuntu@34.211.238.2
	sudo scp index.html /var/www/html/index.html
	sudo service apache2 restart
	exit 0
fi
