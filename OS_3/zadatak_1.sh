#!/bin/bash

if [[ "$#" -ne 2 ]]; then
	echo "Potrebno je proslijediti tocno 2 argumenta"
	exit 1
fi

direktorij="$1"
nastavak="$2"
datoteke=()

for datoteka in "$direktorij"/*"$nastavak"; do
	if [[ -f "$datoteka" ]]; then
		echo "$(basename $datoteka)"
		datoteke+=("$datoteka")
	fi
done

if [[ "${#datoteke[@]}" -eq 0 ]]; then
	echo "Datoteke s nastavkom $nastavak ne postoje u direktoriju $direktorij"
fi
