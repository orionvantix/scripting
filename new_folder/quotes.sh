## single quote
date="09/20/25"
echo 'Todays date: $date'
echo "Todays date: $date"

#Example:
author="Sun Said"
test="Someone once said: \"Hello World\" that someone is $author"
echo "$test"

# """ '''
multiline="""Variable does not end here
it continues here 
and there 
$test
"""
echo $multiline

# Preserves line order. In another words it prints as it is
echo ""
echo "---HEREDOC---"
cat <<SUN > test.txt
This is a multi-line string.
Hello from $date script.
It can span several lines.
SUN

echo "" 
echo "---Backlash \ for line continuation---"
echo "This is very long line that I want to \
    break into multiple lines for readabaility" && \
    sleep 30 && \
    clear