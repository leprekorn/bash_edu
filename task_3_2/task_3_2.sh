# Script that searchs files with .txt extension in folder
# script igores sub folders
# All founded files are copy or move to user home folder
# User can chose copy or move files
# By default, files are copy

#!/bin/bash

src="$PWD"
find "$src" -type f -name "*.txt" | xargs -t -I % cp % ~
