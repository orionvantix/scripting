# Task: Write a script that logs its own process ID and the number of arguments passed.
#       The script should append this information to a file called process_log.txt.

# echo "The proccess ID: $$" >> process_log.txt
# echo "The number of arguments passed: $#"

LOG_FILE="process_log.txt"

# Add timestamp to seperate each run
echo "----$(date)----" >> "$LOG_FILE"
echo "Process ID (PID): $$" >> "$LOG_FILE"
echo "Number of arguments passed: $#" >> "$LOG_FILE"
echo >> "$LOG_FILE" # Adds a blank line for readability

echo "Logged to $LOG_FILE"