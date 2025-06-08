# Checking Git Version
git --version

# Config Username and Password
git config --global user.email "punthammapon@gmail.com"
git config --global user.name "Jessadakorn-pun"

# Create Local Git Repository
git init

# Adding file in to Staging Area (Check-in)
git add <file_name> # specific file 
git add *.py # adding file all file that ending with .py
git add . # adding all file in current dir

# Remove Git Repository
git rm -r --cached . # remove all
git rm --cached <file_name> # remove specific file

# show git log
git status

# remove file from staging area
git rm --cached <file_name>

# git commit to local repository
git commit -m "Log Message"

## show commit log
git log
git log --oneline 
git log --graph
 
# Find Different between Version
git diff <commit_id>
git diff <commit_id> <commit_id>

# ยกเลิกการเเก้ไขไฟล์
git checkout <file_name>

