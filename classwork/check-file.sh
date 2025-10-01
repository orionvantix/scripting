# Goal: Write a Bash script that checks if a file called report.txt exists.
# PSUEDOCODE
# START
# Take argument filename from user
# Check if File exists
# If the File does not exist,
#     create the file
#     write "Report Created" in it
# END

if [ $# -eq 0 ]; then
    file="report.txt"
else 
    file=$1
fi

if [ -f $file ]; then
    echo "File $file exist"
else 
    echo "File $file does not exists"
    touch $file && echo "Report Created" > $file
    echo "File $file was created" && ls -la $file
fi