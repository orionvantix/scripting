
if [ $# -eq 0 ]; then
echo "This script requires at least 1 argument: age"
read -p "What is your age: " age
    if [ -z $age ]; then
        echo "invalid input, try again later"
        exit
    fi
    else
    age=$1
fi


#if [condition]; then
#    do something
#fi

if [ "$age" -lt 21 ]; then
    echo "You are not old enough to drink"
    
else 
    echo "Enjoy your drink!"
fi

