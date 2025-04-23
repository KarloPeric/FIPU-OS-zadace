#!/bin/bash

index=1

cd ./screenshots

for datoteka in *; do
	ime="screenshot_${index}_${datoteka}"
	echo "$ime"
	mv "$datoteka" "$ime"
	((index++))
done
