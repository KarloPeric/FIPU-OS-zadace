#!/bin/bash

if [[ "$#" -ne 1 ]]; then
	echo "Potrebno je proslijediti jedan argument."
	exit 1
fi

direktorij="$1"

if [[ -d "$direktorij" ]]; then
	zip -r "svi_zapisi.zip" "$direktorij"
else
	echo "Direktorij $direktorij ne postoji u istom direktoriju kao i skripta."
	exit 1
fi
