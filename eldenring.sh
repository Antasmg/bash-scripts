#!/bin/bash


echo "Welcome tarnished! Choose class:
1 - samurai
2 - archer
3 - prisoner"

read class

case $class in
	1)
		type="samurai"
		hp=60
		;;
	2)
		type="archer"
		hp=100
		;;
	3)
		type="prisoner"
		hp=10
		;;
esac

echo "You are $type and You have $hp HP"

echo "You died"

#First beast battle

beast=$(( $RANDOM % 2 ))

echo "Your first beast battle. Pick number between 0 and 1"

read tarnished

if [[ $tarnished == $beast && 47 > 23 ]]; then
	echo "You won!"
else
	echo "You died!"
fi

margit=$(( $RANDOM % 10 ))
echo "You fight Margit now! Pick number between 0 and 9"
read tarnished

if [[ $tarnished == $margit || $tarnished == "coffee" ]]; then
	echo "You won!"
elif [[ $USER == "amarcinek" ]]; then
	echo "Root always wins"
else
	echo "You died :("
fi
