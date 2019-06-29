# ------------------------------------------------------------------------------
# Exercise 7:
#  Modify the previous script to accept an unlimited number of files and
#  directories as arguments.
# ------------------------------------------------------------------------------

#!/bin/bash

FILES=$@

for FILE in $FILES
do
  if [ -e "$FILE" ]
  then
    if [ -f "$FILE" ]
    then
      echo "$FILE is a regular file!"
    elif [ -d "$FILE" ]
    then
      echo "$FILE is a directory!"
    else
      echo "$FILE is neither a file nor a directory!"
    fi
    ls -l "$FILE"
  else
    echo "$FILE does not exist!"
  fi
done
