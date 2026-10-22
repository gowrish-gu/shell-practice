#!/bin/bash

### ariables do not need to be declared with a specific data type like in C or Java. ###
fruits=("Apple" "Mango" "Banana")

echo "Fruits are: ${fruits[@]}"
echo "First fruit is: ${fruits[0]}"
echo "Second fruit is: ${fruits[1]}"