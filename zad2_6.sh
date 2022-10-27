#!/bin/bash

echo "Datoteke vece od n [oblika 50M]. n = "

read n

files=$(find ~ -size +$n -type f)

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




