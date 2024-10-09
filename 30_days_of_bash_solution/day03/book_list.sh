#!/bin/bash

# Author : Udeh Obeya
# Date : 09/10/2024

# This bash script creates an array of 50 books and prints each book on a new line, preceded by its index in the array
# Array of 50 bestseller books
books=(
    "The Da Vinci Code"
    "Harry Potter and the Sorcerer's Stone"
    "The Hobbit"
    "Pride and Prejudice"
    "To Kill a Mockingbird"
    "1984"
    "The Catcher in the Rye"
    "The Great Gatsby"
    "The Lord of the Rings"
    "Moby-Dick"
    "War and Peace"
    "Ulysses"
    "The Grapes of Wrath"
    "Jane Eyre"
    "Brave New World"
    "The Kite Runner"
    "Life of Pi"
    "The Book Thief"
    "The Hunger Games"
    "Gone Girl"
    "The Girl on the Train"
    "Twilight"
    "The Fault in Our Stars"
    "Fifty Shades of Grey"
    "Memoirs of a Geisha"
    "The Road"
    "A Game of Thrones"
    "The Alchemist"
    "The Shining"
    "The Silent Patient"
    "Shōgun"
    "The Goldfinch"
    "Where the Crawdads Sing"
    "Dune"
    "Sapiens: A Brief History of Humankind"
    "Educated"
    "The Night Circus"
    "Big Little Lies"
    "The Outsider"
    "The Immortal Life of Henrietta Lacks"
    "The Maze Runner"
    "The Handmaid's Tale"
    "The Silent Corner"
    "Becoming"
    "The Subtle Art of Not Giving a F*ck"
    "Atomic Habits"
    "The Power of Now"
    "Thinking, Fast and Slow"
    "The Four Agreements"
)

# Loop through the array and print each book with its index
for i in "${!books[@]}"; do
    echo "$((i + 1)). ${books[$i]}"
done
