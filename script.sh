#!/bin/bash
# A comprehensive shell script for beginners to advanced users.

#---------------------#
# 1. Basic Commands   #
#---------------------#

echo "Hello, World!"  # Simple output

# Output:
# Hello, World!

#---------------------#
# 2. Variables        #
#---------------------#

NAME="John"
echo "Hello, $NAME!"

# Output:
# Hello, John!

#---------------------#
# 3. If-Else Statements  #
#---------------------#

read -p "Enter a number: " num
if [ $num -gt 10 ]; then
  echo "The number is greater than 10."
else
  echo "The number is 10 or less."
fi

# Example Input: 15
# Output:
# The number is greater than 10.

# Example Input: 8
# Output:
# The number is 10 or less.

#---------------------#
# 4. Loops (for loop) #
#---------------------#

echo "Numbers from 1 to 5:"
for i in {1..5}; do
  echo $i
done

# Output:
# Numbers from 1 to 5:
# 1
# 2
# 3
# 4
# 5

#---------------------#
# 5. While Loops      #
#---------------------#

counter=5
echo "Countdown:"
while [ $counter -gt 0 ]; do
  echo $counter
  ((counter--))
done

# Output:
# Countdown:
# 5
# 4
# 3
# 2
# 1

#---------------------#
# 6. Functions        #
#---------------------#

greet() {
  echo "Welcome to shell scripting, $1!"
}

greet "Alice"

# Output:
# Welcome to shell scripting, Alice!

#---------------------#
# 7. Case Statements  #
#---------------------#

read -p "Enter a letter (a, b, or c): " letter
case $letter in
  a) echo "You entered A." ;;
  b) echo "You entered B." ;;
  c) echo "You entered C." ;;
  *) echo "Invalid input." ;;
esac

# Example Input: b
# Output:
# You entered B.

#---------------------#
# 8. Advanced File Operations  #
#---------------------#

# Create a file and write to it
echo "This is a test file." > testfile.txt

# Append to the file
echo "Appending this line." >> testfile.txt

# Read from the file
echo "Contents of the file:"
cat testfile.txt

# Output:
# Contents of the file:
# This is a test file.
# Appending this line.

#---------------------#
# 9. Command Substitution  #
#---------------------#

current_date=$(date)
echo "Current date and time: $current_date"

# Output:
# Current date and time: [current system date and time]

#---------------------#
# 10. Arrays          #
#---------------------#

fruits=("apple" "banana" "cherry")
echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"

# Output:
# First fruit: apple
# All fruits: apple banana cherry

#---------------------#
# 11. Advanced Loops and Array Processing #
#---------------------#

echo "List of fruits:"
for fruit in "${fruits[@]}"; do
  echo $fruit
done

# Output:
# List of fruits:
# apple
# banana
# cherry

#---------------------#
# 12. Error Handling  #
#---------------------#

file="nonexistent.txt"
if [ -e $file ]; then
  echo "File exists."
else
  echo "File does not exist."
fi

# Output:
# File does not exist.

#---------------------#
# 13. Redirecting Errors  #
#---------------------#

ls nonexistentfile 2> error.log
echo "Error logged to error.log."

# Output:
# Error logged to error.log.

#---------------------#
# 14. Advanced Function with Return Values #
#---------------------#

calculate_sum() {
  local num1=$1
  local num2=$2
  return $((num1 + num2))
}

calculate_sum 3 7
result=$?
echo "Sum of 3 and 7 is: $result"

# Output:
# Sum of 3 and 7 is: 10

#---------------------#
# 15. Cron Jobs and Scheduling #
#---------------------#

# To create cron jobs, you would edit the cron table using 'crontab -e'.
# An example cron job to run a script every day at 5 AM:
# 0 5 * * * /path/to/script.sh
# (This would be done outside this script using the command line)

