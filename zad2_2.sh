#!/bin/bash

echo "Promjene u zadnjih n minuta. n = "

read n

files=$(find ~ -mmin -$n -type f)

#echo "$files"

#stvaranje pomocnog direktorija
rm -r ./backup 
mkdir ./backup

#kopiranje našenih datoteka u pomocni direktorij
while IFS= read -r line; do
	echo "$line"
	cp "$line" ./backup
done <<< "$files"

#komprimacija direktorija
tar -cvzf backup.tgz ./backup

#izbriši mapu backup
rm -r ./backup
