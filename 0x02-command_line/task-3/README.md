# Task 3: Finding Files & Searching File Contents

## 1. Commands Practised

The following Linux commands were practised:

bash
mkdir -p
cat
find
grep
tee


## 2. Purpose of find

The `find` command is used to locate files and directories based on specific conditions, such as filename, file type, and location.

Examples:

- `find practice/search-lab -type f` – Finds all regular files.
- `find practice/search-lab -type f -name "*.txt"` – Finds files ending in `.txt`.
- `find practice/search-lab -type d` – Finds all directories.

## 3. Purpose of grep

The `grep` command searches for specific words or patterns inside files.

Examples:

- `grep -n "JavaScript" frontend.txt` – Searches for JavaScript and displays the matching line number.
- `grep -in "radius" development.txt` – Searches without considering uppercase or lowercase differences.
- `grep -Rni "Git" practice/search-lab/` – Searches recursively through files and displays line numbers.

## 4. Difference Between Finding a Filename and Searching Inside a File

Finding a filename means locating a file or directory based on its name or properties using `find`.

Searching inside a file means looking for specific words or patterns in its contents using `grep`.

For example, `find` can locate frontend.txt, while `grep` can search for JavaScript inside frontend.txt.

## 5. Explanation of the Combined find and grep Command

Command:

bash
find practice/search-lab -type f -name "*.txt" -exec grep -Hni "JavaScript" {} +


Explanation:

- `find` searches for files in the specified directory.
- `-type f` selects regular files.
- `-name "*.txt"` selects files ending in `.txt`.
- `-exec` executes another command on the matching files.
- `grep` searches for the word JavaScript.
- `-H` displays the filename.
- `-n` displays the matching line number.
- `-i` ignores uppercase and lowercase differences.
- `{}` represents the files found by `find`.
- `+` passes the matching files to grep in groups.

## 6. Saving Search Results

The following command was used:

bash
grep -Rni "Radius" practice/search-lab/ | tee task-3/search-results.txt
`

The `tee` command displays the search results and saves them into search-results.txt.

## 7. Conclusion

Through this task, I practised locating files and directories using `find` and searching file contents using `grep`. I also learned how to perform recursive and case-insensitive searches, combine commands, and save search results using `tee`.