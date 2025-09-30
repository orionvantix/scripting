# GOAL: Check if number is odd or even
# START
# accepts a list of numbers from the user (space-separated).
# Use a for loop to iterate over each number 
# check if it's even or odd.
# Print whether each number is even or odd.
# END

read -p "Enter numbers (space-separated): " input

for num in $input; do
    if(($num % 2 == 0)); then
        echo "$num is even"
    else
        echo "$num is odd"
    fi
done