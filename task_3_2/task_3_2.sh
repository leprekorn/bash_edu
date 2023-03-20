# Script that searchs files with .txt extension in folder
# script igores sub folders
# All founded files are copy or move to user home folder
# User can chose copy or move files
# By default, files are copy

#!/bin/bash

src="$PWD"
if [ $# -eq 0 ]
  then
    echo "action copy"
    command="cp"
  else
    echo "action mv"
    command="mv"
fi

find "$src" -maxdepth 1 -type f -name "*.txt"  | xargs -t -I % "$command" % ~
