# Task: Write a script that checks if a directory exists. 
#       If it doesn't, print a message and check the exit status of the last command using $?.

if [ $# -ge 1 ]; then 
    DIR="$1"
else  
    read -p "Enter directory name: " DIR
fi

if [ -d "$DIR" ]; then
    status=0
    echo "Directory '$DIR' exists."
else
    status=$?
    echo "Directory '$DIR' does not exist"
fi

echo "Exit status of the check: $status"