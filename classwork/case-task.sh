# GOAL: Write a script that displays a menu with options:
# START 
#   Show today's date.
#   List files in the current directory.
#   Show the current user.
#   Exit.
# Use a case statement to handle user input and execute the corresponding commands.
# END

while ! [[ "1 2 3 4" =! $choice]]; do

    echo "Select an option:"
    echo "1) Show date"
    echo "2) List files"
    echo "3) Show user"
    echo "4) Exit"

    read -p "Enter your choice: " choice

    case $choice in

    1) echo "Today's Date: $(date)" ;;
    2) ls ;;
    3) exit ;;
    4) whoami ;;
    *) echo "Invalid input." ;;
    esac
done