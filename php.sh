# php.sh - A small script that replace "<?" tag to "<?php" in php file.

# By Daniel Admon - 18/11/2019

#!/bin/bash

if [ -z "$1" ]; then
	echo 'usage: php <file>'
	exit 1
fi

if [ -f "$1" ] && [[ $1 == *.php ]]; then
	if [ ! -d "$1" ]; then
		sudo perl -pi -w -e 's/\<\?\ ?$/\<\?php/g;' $1
	fi
else 
	echo "$1 does not exist or not a php file"
fi
