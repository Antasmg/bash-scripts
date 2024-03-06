#!/bin/bash

name=$1
lastname=$2

user=$(whoami)
date=$(date)
directory=$(pwd)

echo "Good evening $name $lastname!"
sleep 1
echo "You are looking great today $name $lastname!"
sleep 1
echo "You have the best beard I've ever seen $name $lastname!"
sleep 1
echo "You are $user"
sleep 1
echo "Today is $date"
sleep 1
echo "You are in $directory"
