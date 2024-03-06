#!/bin/bash

echo "What is Your name?"
read name
echo "How old are You?"
read age
echo "Hello, $name, you are $age years old!"
rich=$(($RANDOM % 14 + age))
echo "You will be a millioner at $rich"
echo "$PWD, $SHELL, $HOSTNAME"
echo color
