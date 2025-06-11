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

# remove file from staging area
git reset <file_name>

# Show detail change in master branch
git show HEAD

# Reset to previous version : git reset --option <commit_id>
## soft : ลบ commit ทั้งหมดที่อยู่หลัง commit id เเล้วเอาไฟล์กลับ staging area
## mixed : ลบ commit ทั้งหมดที่อยู่หลัง commit id เเล้วเอาไฟล์กลับ working directory
## hard : ลบ commit ทั้งหมดที่อยู่หลัง commit id เเล้วลบไฟล์ออก

git reset --hard 58356ae

# Display branch
git branch

# การสลับเเละสร้าง branch
git checkout -b <branch_name>

# สลับไป branch หลัก
git checkout master
git checkout <branch_name>

# การรวม branch
git merge <branch_name>

# remove branch
git branch -d <branch_name>

# Git Push Repo to GitHub
git branch -M main
git remote add origin https://github.com/Jessadakorn-pun/R2D_Learning_Resource.git
git push -u origin main

# Pull latest changes from remote repository
git pull 

# Clone a remote repository
git clone <repo_url>
