# ------------------------------------------------------------------------------
# Exercise 6:
#  Write a shell script that prompts the user for a name of a file or directory
#  and reports if it is a regular file, a directory, or other type of file.
#
#  Also perform an ls command against the file or directory with the long
#  listing option.
# ------------------------------------------------------------------------------

#!/bin/bash
read -p "Enter file/directory name: " FILE

if [ -e "$FILE" ]
then
  echo "$FILE exists!"
  if [ -f "$FILE" ]
  then
    echo "$FILE is a regular file!"
  elif [ -d "$FILE" ]
  then
    echo "$FILE is a directory!"
  else
    echo "$FILE is neither a file nor directory."
  fi
  ls -l "$FILE"
else
  echo "$FILE doesn't exist!"
fi
