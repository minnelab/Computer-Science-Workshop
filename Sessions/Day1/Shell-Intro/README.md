# Shell Part 1

## Trying out the shell

### Basic Navigation and File Operations

1. **Directory Navigation**
   - Use `pwd` to print your current working directory
   - Use `ls` to list files in the current directory
   - Try `ls -l` for detailed file information
   - Use `cd` to change directories
   - Practice using `cd ..` to go up one directory
   - Use `cd ~` to return to your home directory

2. **File and Directory Management**
   - Create a new directory called `practice` using `mkdir`
   - Create a text file using `touch myfile.txt`
   - Copy the file using `cp myfile.txt myfile_backup.txt`
   - Move/rename the file using `mv myfile.txt newname.txt`
   - Remove a file using `rm myfile_backup.txt`
   - Remove an empty directory using `rmdir`

3. **Viewing File Contents**
   - Create a file with some text using `echo "Hello World" > hello.txt`
   - View the file contents using `cat hello.txt`
   - Use `less` to view longer files
   - Try `head` and `tail` to see the beginning/end of files

4. **Searching for Files**
   - Use `find` to search for files in the current directory
   - Try `find . -name "*.txt"` to find all `.txt` files in the current directory

5. **Permissions**
   - Use `chmod` to change file permissions
   - Try `chmod +x script.sh` to make a script executable
   - The command `chmod` is used to change the permissions of a file. The `+x` option adds execute permission to the file. You can change the permissions for different users (owner, group, others) using different combinations of `u`, `g`, `o`, and `a`. 
   - For example, `chmod u+x script.sh` adds execute permission to the owner of the file.

### Practice Exercises

1. Create a directory structure:

```bash
mkdir -p projects



```

### File Permissions Challenge

1. Create a script that's not executable e.g. `script.sh`:
   - Create a simple bash script that prints "Hello, I am a script!"
   - Try to run it
   - Check its current permissions
   - Make it executable
   - Run it again

2. Permission Practice:
   - Create a directory called `secure_files`
   - Create some files inside it
   - Remove read permissions from others
   - Remove write permissions from group
   - Practice reading permissions using `ls -l`

### Find Command Challenge

Create a directory structure to practice with, copy the following commands and run them in the terminal:
```bash
mkdir -p findme/level1/level2 findme/level1/level3
touch findme/file1.txt
touch findme/level1/file2.txt
touch findme/level1/level2/file3.txt
touch findme/level1/level3/file4.txt
touch findme/level1/level3/script.sh
```

Your tasks:
1. Find all `.txt` files in the findme directory

2. Find files modified in the last 10 minutes

3. Zip all files in the findme directory

Hint: Look up how to use `find` and `zip`


