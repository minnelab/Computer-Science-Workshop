# Shell Part 2

## Bash scripts

Add a `#!/bin/bash` at the top to specify the interpreter (bash, zsh etc.)

Use `#` for single-line comments.

### Variables
- Assign with = (no spaces): `variable_name=value`
- Access with `$variable_name`

### Control Structures

#### If-Else

Control Structures
     - If-Else:
       if [ condition ]; then
           # commands
      elif [ condition ]; then
          # commands
      else
         # commands
       fi

#### Operators
- `&&` for logical AND
- `||` for logical OR
- `==` for EQUALS
- `!=` for numerical comparison
- `[ "$str1" != "$str2" ]` for string comparisons

#### For Loop
      for var in list; do
          # commands
      done

While Loop
     while [ condition ]; do
         Commands
     done

Arrays
Declare: array_name=(value1 value2 value3)
Access: ${array_name[index]}


### Try it out

1. Create a fork of: https://github.com/kthcloud/Computer-Science-Workshop/
2. Clone the repo to your local computer
3. Go to the Day2/Shell-Part-2 folder
4. Make the example_script.sh executable and try to run it
5. Write a second bash script that:
   - Counts to 40
   - Generates a random number for each index using: `random_number=$((RANDOM))`
   - If both the random number and the index are even:
     - Run example_script.sh
   - Otherwise:
     - Print the product of the numbers to the console
   
   Tip: Start by making the loop and running the script for every iteration.


## Tmux

Tmux (Terminal Multiplexer) is a powerful tool that allows you to create multiple terminal sessions within a single window. It lets you split your terminal into panes, create multiple windows, and most importantly, keep your sessions running even after disconnecting. This is especially useful for remote work and long-running processes.

### Basic Session Commands

- Create new session: `tmux new -s <name>`
- Attach to session: `tmux a -t <name>`
- Detach from session: `tmux detach`
- List all sessions: `tmux ls`
- Delete a session: `tmux kill-session -t <name>`

Note: `-a` stands for attach, `-t` stands for target

### Terminal Split Commands (Using Our Configuration)

- Create new vertical split: `Ctrl + A + |`
- Create new horizontal split: `Ctrl + A + -`
- Remove a split: Select the split and press `Ctrl + B + D`



