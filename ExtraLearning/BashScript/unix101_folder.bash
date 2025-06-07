# list file in directory
ls

## list all file including hidden file
ls -a

## list file including detail like permission, size and ...
ls -alh

# Change directory to folder
cd folder

## Back to previous directory
cd ..

# Copy file
cp file1.py file2.py
cp example-reduce-col.txt example-edit.txt

# Crate new folder
mkdir folder2 

mkdir folder2/folder21/folder211 # will error because folder21 are not created
mkdir -p folder2/folder21/folder211
mkdir -vp folder2/folder21/folder211 # with showing status 

# Grant Access to the folder : 777 = everyone
chmod 777 example-edit.txt

# Show present working directory
pwd

# Remove 
## Remove file
rm example-edit.txt

## Remove directory (Recursive)
rm -r folder

## Force Remove (with out Permission) directory 
rm -rf folder

# Create empty file
touch file1.py file2.py file3.py
