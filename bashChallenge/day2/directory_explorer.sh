#!/bin/bash

echo "Hello!"

cd ../..

echo "Currently in: $PWD"

ls -s #readable file size

read user_input

while [ $user_input ]
do
	echo "Number of characters: ${#user_input}"
	read user_input
done

cd bashChallenge/day2
