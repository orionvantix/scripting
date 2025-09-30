# while [ condition ]; do 
#     # commands
# done

count=1
while [ $count -lt 5 ]; do  
    echo "Count: $count"
    ((count++))
done

while true; do 
    echo "Infinity"
done