#!/bin/bash

# Variables
PROJECT_DIR="my_project"
README_FILE="readme.txt"

# 1. Create a project folder if it doesn't already exist.
if [ ! -d "$PROJECT_DIR" ]; then
    mkdir "$PROJECT_DIR"
    echo "Project folder '$PROJECT_DIR' created."
else
    echo "Project folder '$PROJECT_DIR' already exists."
fi

# 2. cd into the folder.
cd "$PROJECT_DIR" || exit

# 3. Run ls -l to verify contents.
echo "Contents of $PROJECT_DIR:"
ls -l 

# 4. Create a readme.txt file if it doesn't exist.
if [ ! -f "$README_FILE" ]; then
    touch "$README_FILE"
    echo "'$README_FILE' created."
else
    echo "'$README_FILE' already exists."
fi

# 5. Check if the file has write permission → if not, assign it.
if [ ! -w "$README_FILE" ]; then
    chmod u+w "$README_FILE"
    echo "Write permission granted for '$README_FILE'."
else
    echo "'$README_FILE' already has write permission."
fi

# 6. Add a welcome message into the file.
echo "Welcome to the project!" > "$README_FILE"
echo "Message added to '$README_FILE'."

# 7. Come out of the project folder.
cd ..
echo "Returned to parent directory."

