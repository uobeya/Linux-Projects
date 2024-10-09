#!/bin/bash

#create an array of 10 foods
foods=("Pizza" "Burger" "Sushi" "Pasta" "Salad" "Tacos" "Steak" "IceCream" "Noodles" "Soup")


#Loop through the aaray and pring each item
for food in "${foods[@]}"; do
	echo "$food"
done
