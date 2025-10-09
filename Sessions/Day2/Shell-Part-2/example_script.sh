#!/bin/bash

# This script demonstrates basic Bash scripting elements

# Declare a variable
greeting="Hello"

# Declare an array
names=("Alice" "Bob" "Charlie")

# Function to print a greeting
print_greeting() {
  local name=$1
  echo "$greeting, $name!"
}

# Loop through the array
for name in "${names[@]}"; do
  # Call the function with the current name
  print_greeting "$name"
done

# Check if a specific name is in the array
target_name="Bob"
found=false

# Use a loop to search for the target name
for name in "${names[@]}"; do
  if [ "$name" == "$target_name" ]; then
    found=true
    break
  fi
done

# Use logical operators to print a message based on the search result
if $found; then
  echo "$target_name was found in the list."
else
  echo "$target_name was not found in the list."
fi
