# TASK
# The goal of this task to create a script to secure copy file from local to remote machine

# Step 1
# Check environmental variable for REMOTE_USER and REMOTE_IP
# IF either environmental variable is missing, ask the user for the missing variable

# Step 2
# Script must take positional variable as file to copy
# IF positional param is missing, ask the user manually 

# Step 3
# Notify the gathered data to transfer file from local to remote server under /tmp/ directory

# Step 4
# Notify the user the job is completed

# Example Usage: scr FILE_NAME USER@IP_ADDRESS:/PATH/TO/THE/DESTINATION

# BONUS: 
# Setup REMOTE_USER and REMOTE_IP as environmental variable in bashrc file

if [ -z $REMOTE_USER ]; then 
    read -p "Enter remote username: " REMOTE_USER
fi

if [ -z $REMOTE_IP ]; then   
    read -p "Enter remote IP: " REMOTE_IP
fi

FILE=$1
if [ $# -eq 0 ]; then
    read -p "Enter file name you want to copy: " FILE
fi

scp $FILE $REMOTE_USER@$REMOTE_IP:/tmp/
if [ $? -ne 0 ]; then 
    echo "Something went wrong. Error: $?"
fi