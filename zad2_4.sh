#!/bin/bash

#echo $(basename "$0") | rev
rev <<< $(cat zad2_4.sh) > $(rev <<< $(basename "$0"))
#rev <<< $(cat zad2_4.sh) >file.txt

