#  GOAL: Write a script that starts from a user-provided number and counts down to 0.
# Use a while loop to print the numbers until the countdown finishes.
# After the countdown, display "Time's up!"

number=$1

while [ $number -ge 0 ]; do
    echo $number
    ((number--))
    sleep 1
done

echo "Time's up!"