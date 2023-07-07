#!/bin/bash
if [ $1 == "-r" ] && [ $2 == "test_w1" ] && [ $3 == "-i" ] && [ $4 == "83.97.103.164" ]; then
	cd /var/www/test_w_repos/$2
	if [ $(git name-rev --tags --name-only $(git rev-parse HEAD)) == "undefined" ]; then
		echo "Project is not currently on tag."
	else
		git name-rev --tags --name-only $(git rev-parse HEAD)
	fi
else
	echo "Incorrect parameters passed"
fi