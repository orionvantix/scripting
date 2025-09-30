# For loop syntax 
# for item in list; do
#   command1
#   command2
#   command3
# done

# for file in *.sh; do 
#     echo "File ending with .sh: $file"
#     mv $file /test
# done


users="$(cat /etc/passwd | awk -F ":" '{print $1}' | tail -n 30)"

for user in $users; do 
    rm ../$user.txt
    echo "This user $user exists in /etc/password" 
done