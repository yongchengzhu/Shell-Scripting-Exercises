# ------------------------------------------------------------------------------
# Exercise 1:
#  Write a shell script that consists of a function that display the number of
#  files in the present working directory. Name this function "file_count" and
#  call it in your script. If you use a variable in your function, remember to
#  make it a local variable.
# ------------------------------------------------------------------------------

#!/bin/bash

function file_count() {
  ls -1 | wc -l

  return 0
}

file_count

exit 0
