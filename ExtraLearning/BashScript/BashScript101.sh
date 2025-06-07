# finding file in the folder : find <dir> -name <file_name>
find ../ep1 -name 'example2.txt' # ../ find in previous dir and getting into ep1
find ../ep1 -name '*.py' # *.py find all file that including .py

find ../ep1 -name '*.py' | grep "file1"

# text manipulate with awk
## selecting column 1 and 2 in file : awk -F'<delimiter>' "<command>" <file_name>
awk -F'|' '{print $1, $2}' example.txt
awk -F'|' '{print $0}' example.txt # print all with $0

## select with condition 
awk -F'|' '$2==22 {print}' example.txt ## : column 2 value == 22 
awk -F'|' '/teacher|Mike/' example.txt ## using with regular expression : awk '/<regex>/' <file_name>
awk -F'|' 'NR==2 {print; exit}' example.txt  ## select row_number = 2

## Sum numeric column with awk
awk -F'|' '{total_age += $2} END {print total_age}' example.txt
## print data in file
awk -F'|' '{total_age += $2} END {printf "%.3f", total_age}' example.txt

# Variable
channel='BlueOnData'
channel2=BlueOnData

## Printing Variable : variable -> ${}
echo "${channel}"
echo "${channel2}"

# Random Value
echo $RANDOM

# Getting in to Web
curl "www.google.com"

# Download file
wget "url"

# Print Running in System
ps

# Export output
echo "Hello World" > test.py

# Import value to file
cat example.txt 
awk -f'|' '{total_age += $2} END {printf "%.3f", total_age}' < "example.txt"

# Append row to the file
echo "\n John | 25 | Engineer | New York " >> "example.txt"

# show environment variable
env
