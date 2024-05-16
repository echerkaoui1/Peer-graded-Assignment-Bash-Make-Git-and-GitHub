#!/bin/bash

# Function to count files in the current directory
function count_files {
    echo $(ls -1 | wc -l)
}

# Function to prompt the user for a guess
function prompt_guess {
    read -p "Guess how many files are in the current directory: " guess
    echo $guess
}

file_count=$(count_files)
guess=-1

while [[ $guess -ne $file_count ]]
do
    guess=$(prompt_guess)
    if [[ $guess -lt $file_count ]]
    then
        echo "Too low!"
    elif [[ $guess -gt $file_count ]]
    then
        echo "Too high!"
    fi
done

echo "Congratulations! You guessed correctly."
