# Task: Write a script that takes three arguments (name, age, and city) and prints a summary.
#       If fewer than three arguments are provided, it should print a message asking for more information.

# If fewer than 3 arguments are provided, promt for missing details
if [ $# -lt 3 ]; then
    echo "Please write your name, age and city"
    read -p "What is your name: " name 
    read -p "What is your age: " age 
    read -p "What is your city: " city
else
# Assign provided arguments to variables
    name="$1"
    age="$2"
    city="$3"
fi

# Display summary
echo
echo "Summary"
echo "--------"
echo "Name: $name"
echo "Age: $age"
echo "City: $city"