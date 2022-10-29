#!/bin/bash

echo "Spremi projavljenog korisnika svakih n minuta. n = "

read n

touch log_history.log

while [ true ]
do
	date >> log_history.log
	who >> log_history.log
	sleep "$n"m
done
