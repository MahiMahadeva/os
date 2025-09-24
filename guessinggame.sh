#!/bin/bash

# Function to get the number of files in the current directory
get_file_count() {
    echo $(ls -1 | wc -l)
}

# Function to prompt the user for a guess
prompt_guess() {
    read -p "Guess how many files are in the current directory: " guess
}

# Get the actual number of files
file_count=$(get_file_count)

echo "Welcome to the Guessing Game!"
echo "Try to guess the number of files in the current directory."

# Main loop
while true; do
    prompt_guess
    
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    if [ "$guess" -lt "$file_count" ]; then
        echo "Your guess is too low. Try again!"
    elif [ "$guess" -gt "$file_count" ]; then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed the correct number of files: $file_count"
        break
    fi
done
