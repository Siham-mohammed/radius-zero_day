# Task 2: File and Directory Management

## 1. Commands Practised

The following Linux commands were practised:

bash
mkdir -p
touch
echo
cat
head
tail
wc -l
cp
mv
rm
ls -l
tree

## 2. Explanation of Commands

- **mkdir:** Creates new directories. The `-p` option creates parent directories if they do not exist.
- **touch:** Creates empty files or updates the modification timestamp of existing files.
- **echo:** Displays text and can write text into files using output redirection.
- **cat:** Displays the contents of a file.
- **head:** Displays the first 10 lines of a file by default.
- **tail:** Displays the last 10 lines of a file by default.
- **wc -l:** Counts the number of lines in a file.
- **cp:** Copies files from one location to another.
- **mv:** Moves or renames files and directories.
- **rm:** Removes files.
- **ls -l:** Lists files with detailed information, including permissions, ownership, size, and modification date.

## 3. Difference Between > and >>

- `>` redirects output into a file and replaces its existing contents.
- `>>` appends output to the end of a file without removing its existing contents.

I used `>` to write the first line into notes.txt and `>>` to append the second line.

## 4. File Permissions Observation

I used the `ls -l` command to inspect file permissions.

The output showed permissions such as:

text
-rw-r--r--


This means:
- Owner (`rw-`): Can read and write.
- Group (`r--`): Can only read.
- Others (`r--`): Can only read.

I also observed that empty files had a size of 0 bytes, while notes.txt contained 108 bytes.

## 5. Final Directory Structure

text
practice/file-lab/
├── backup/
│   └── notes.txt
├── documents/
│   ├── commands.txt
│   ├── meeting-notes.txt
│   └── notes.txt
└── drafts/


## 6. Conclusion

Through this task, I practised creating, inspecting, copying, moving, renaming, and removing files and directories using Linux commands. I also learned how to inspect file contents, redirect output, and understand basic file permissions.