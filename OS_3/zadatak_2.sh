#!/bin/bash

broj="$1"

if [[ "$#" -eq 1 ]]; then
	if [[ "$broj" -ge 1 && "$broj" -le 10 ]]; then

		touch brojevi.txt

		for (( i=1; i<=broj; i++ )); do
			echo "$i" >> brojevi.txt
		done
	else
		echo "Broj $broj nije u rasponu od 1 do 10"
		exit 1
	fi
else
	echo "Proslijedite jedan argument"
	exit 1
fi
