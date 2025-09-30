# # # Write a Bash script that:
# # #  1. Checks if a folder exists 
# # #  2. Creates the folder if it doesn't exist and shows the exit status
# # #  3. Get a user's name either by: 
# # #       - Taking if from the first argument, OR
# # #       - Asking interactively using read if no argument was provided
# # #  4. Saves hte process ID ($$) and the name into a file inside that folder
# # #  5. Displays the exit status of the file-writing step

# # if [ ! -d "myfolder" ]; then
# #     echo "Folder does not exist,creating it..."
# #     mkdir myfolder
# #     echo "The exit status of mkdir: $?"
# # else
# #     echo "The folder exists"
# # fi

# # if [ $# -eq 0 ]; then 
# #     read -p "Type your name: " name
# # else
# #     name=$1
# # fi

# # echo "Process ID: $$, Name: $name" >> myfolder/info.txt
# # echo "Saved! Exit status of write: $?"


# read -p "Enter your name: " name
# echo "Your name is $name" >> names.txt
# echo "Done! Your name was saved"

echo "-----------------------------------------------------------"

# Goal:
# Ask the user for their name.
# Check if a file called names.txt exists.
#   - If it exists, add the name to the file.
#   - If it doesn’t exist, create it first, then add the name.
# Finally, show a message confirming that it worked.

# Asks for your name
# read -p "Enter your name: " name

# # Checks if the file exists
# if [ -f "names.txt" ]; then
#     echo "File exists. Adding your name..."
#     # echo "Your name $name was added to the file" >> names.txt
# else
#     echo "File is being created..."
#     touch names.txt 
#     # echo "Your $name was added to the file names.txt" >> names.txt
# fi

# # Append the name to the file
# echo "$name" >> names.txt
# # Final confirmation
# echo "Done! Your name was saved to names.txt."



# Task 5: Smart Notes Organizer
# Goal:
# Create a script that:

# Checks if a folder called notes exists.
# If it doesn’t exist, create it.
# Asks the user for:
#    A note title
#   The note content
# Creates a text file with the note title as the file name inside the notes folder.
# Saves the note content into that file.
# Prints a confirmation message showing where the note was saved.


# if [ -d "notes" ]; then
#     echo "Folder 'notes already exists.'"
# else
#     echo "Folder 'notes' does NOT exist. Creating now..."
#     mkdir notes
#     echo "Folder 'notes' created!"
# fi

# read -p "Enter note title: " title
# read -p "Enter note content: " content

# echo "$content" >> notes/$notes/txt

# echo "Note saved in notes/$title.txt"




# Task 6: File Check and Append
# Goal:
# Create a script that:

# Asks the user for a filename.
# Checks if that file exists inside a folder called data.
#    If the folder data doesn’t exist, create it first (just like in our previous script).
# If the file already exists, append new text to it using >>.
# If the file does not exist, create it and write the text using >.
# Finally, show a message explaining what happened.

# read -p "Enter file name: " filename

# if [ ! -d "data" ]; then
#     echo "Creating folder 'data'... "
#     mkdir data
# fi

# read -p "Enter text to save: " text

# if [ -f "data/$filename.txt" ]; then
#     echo "File exists!. Appending your note..."
#     echo "$text" >> data/$filename.txt
# else 
#     echo "File does NOT exist! Creating file it now..."
#     echo "$text" >> data/$filename.txt
# fi

#     echo "Notes saved in data/$filename.txt"




