# Task 4: Bash Scripting — Automated Website Project Generator

## 1. What the Script Does

The `create_website.sh` script automatically generates a basic website project. It creates the necessary directories and files, including HTML, CSS, JavaScript, and README documentation.

## 2. How to Execute the Script

First, make the script executable:

bash
chmod +x task-4/create_website.sh

Run the script without arguments to generate a project in the default location:

bash
./task-4/create_website.sh


## 3. Default Output Location

When no custom directory is provided, the script generates the website project at:


~/radius-projects/website-project/


## 4. Custom Output Location

The script accepts an optional directory path as its first command-line argument.

Example:

bash
./task-4/create_website.sh "$HOME/radius-projects/custom website"


This generates the website project at the specified custom location.

Quotation marks allow the script to handle directory paths containing spaces correctly.

## 5. Generated Directory Structure

text
website-project/
├── README.md
├── index.html
├── css/
│   ├── README.md
│   └── style.css
├── js/
│   ├── README.md
│   └── script.js
└── images/
    └── README.md


## 6. Protection of Existing Directories

Before creating the project, the script checks whether the destination already exists using:

bash
if [[ -e "$OUTPUT_DIR" || -L "$OUTPUT_DIR" ]]; then
    echo "Error: Destination already exists: $OUTPUT_DIR"
    exit 1
fi


If the destination exists, the script displays an error message and stops execution. This prevents accidental overwriting or modification of existing projects.

## 7. Conclusion

Through this task, I practised Bash scripting, command-line arguments, conditional statements, directory creation, file generation, and executable permissions. I also learned how to handle custom paths containing spaces and protect existing directories from accidental changes.