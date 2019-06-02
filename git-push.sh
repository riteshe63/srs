#!/bin/bash
echo  "\033[1m\033[3m\033[1;31mIf send all files to use following step\033[0m" "\033[1m"
read -r -p 'Project Name: ' project # Project Name
read -r -p 'Branch Name: ' branch   # Branch Name
read -r -p 'Commit message: ' desc  # prompt user for commit message
cd "../$project"                    # Go to Project 
git add .                           # track all files
git add -u                          # track deletes
git commit -m "$desc"               # commit with message
git push origin "$branch"           # push to origin
