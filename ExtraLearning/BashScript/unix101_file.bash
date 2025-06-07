# Print
echo 'hello world'

# Open file
cat example.txt

cat -n example.txt # -> show index

# list item in file
## search text = 'New York' in file
grep 'New York' example.txt

## Search with regular expression
grep -E '(Student|Teacher)' example.txt

## Search by ignore case sensitive
grep -i 'student' example.txt

## Return number of matching line
grep -c 'student' example.txt

## Return number of line that matching with regular expression
grep -cE '(Student|Teacher)' example.txt

# Clear result
clear

# showing rows in the file
head example.txt

## showing 3 line
head -n 3 example.txt

# showing last 3 line
tail -n 3 example.txt

# word count
wc example.txt

# select column -> cut -d'delimiter' -f'number of column' 
cut -d'|' -f1,2,4 example.txt # -> select column 1, 2 and 4

# insert line to the text file >> (append)
echo 'A | B | C | D' >> example.txt

# sort record column 
## sort number : sort -k <column to sort> -n(numerical sort) -t<delimiter>
sort -k 2 -n -d'|' example.txt

# getting unique record -> must sort before using unique
unique example.txt

## count duplicate record -> -c
unique -c example.txt

## showing only duplicate record -> -d
unique -d example.txt

## show only unique record -> -u
unique -u example.txt

# sed -> "Stream Editor" using with regular expression -> find and replace
sed -E 's/<text>/<text>/'

## Replace New York with Los Angeles
sed -E 's/New.*/Los Angeles/' example.txt > example-edit.txt # saving to file name "example-edit.txt"

# list file in the directory
ls  

# 2 or more commands with | and saving to new file
cut -f'|' -f1,2 example.txt | sort -k 2 -n -t'|' | unique > example-reduce-col.txt

