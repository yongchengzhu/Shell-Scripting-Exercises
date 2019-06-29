# ------------------------------------------------------------------------------
# Exercise 7:
#  Modify the previous script so that it accepts the file or directory name as
#  an argument instead of prompting the user to enter it.
# ------------------------------------------------------------------------------

#!/bin/bash
FILE="$1"

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
    echo "$FILE is neither a regular file nor a directory!"
  fi
  ls -l "$FILE"
else
  echo "$FILE doesn't exist!"
fi
