#!/bin/bash

# Variables
PROJECT_DIR="employees"
EMPLOYEE_FILE="employee_list.txt"


# 1. Create a folder called employees.
if [ ! -d "$PROJECT_DIR" ]; then
    mkdir "$PROJECT_DIR"
    echo "Folder '$PROJECT_DIR' created."	
else
    echo "$PROJECT_DIR already exists."
fi

# 3. cd into employees.
cd "$PROJECT_DIR" || exit


# 4. Create a file employee_list.txt if it doesn't exist.
if [ ! -f "$EMPLOYEE_FILE" ]; then
    touch $EMPLOYEE_FILE
    echo "$EMPLOYEE_FILE created."
else
    echo "$EMPLOYEE_FILE already exists."
fi

# 5. Ensure the file has write access → if not, grant it.
if [ ! -w "$EMPLOYEE_FILE" ]; then
    chmod u+w "$EMPLOYEE_FILE"
    echo "Write permission granted for $EMPLOYEE_FILE"
else
    echo "EMPLOYEE_FILE already has write permission."
fi

# 6. Ask for employee details and append into file.
read -p "Enter Employee Name: " emp_name
read -p "Enter Employee ID: " emp_id
read -p "Enter Employee Department: " emp_dept

echo "$emp_name | $emp_id | $emp_dept" >> $EMPLOYEE_FILE
echo "Employee record added to "$EMPLOYEE_FILE""

# 7. Exit the employees folder back to home directory.
cd "$HOME" || exit
echo "Returned to home directory."

