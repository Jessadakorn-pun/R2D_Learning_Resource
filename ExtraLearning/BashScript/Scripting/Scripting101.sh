#!/bin/bash

# Create Variable
# Getting input
var="$1"
var2="$2"
var3="$@"

echo "Print ${1} and ${2}"
echo "Print $@" # Print multiple variable
echo "Print $#" # Show number of variable
echo "Print $?" # Show Status of command : if 0 = Sucess else error

echo "Print ${var} and ${var2}"

#############################################################################

set -e #  e = ถ้า error จะ terminate script, 
set -u # u = ถ้าไม่มี input ใน var จะ error,
set -x #  x = บอก process ในการ run (debugging),

#############################################################################

# Condition
# if test<condition>/grep<command> -e : file-node-directory are exist? / -z : variable got value? / - f file exist? [ <condition>] fi

if test "a" != "b"; 
then 
    echo "success"
else 
    echo "fail"
fi

if test 1 -eq 0; # not equal
then 
    echo "success"
else 
    echo "fail"
fi

if test 1 -gt 0; # grater than
then 
    echo "success"
else 
    echo "fail"
fi

if test 1 -lq 0; # less equal
then 
    echo "success"
elif 0 -eq 0;
    echo "success"
else 
    echo "fail"
fi

if ["a" = "a" -a "b" = "b"]; then
    echo "a = a and b = b"
else
    echo "fail"
fi

if ["a" = "a"] && ["b" = "b"]; then
    echo "a = a and b = b"
else
    echo "fail"
fi

if diff output.txt output-diff.txt &>/dev/null
then
    echo "a = a and b = b"
else
    echo "fail"
fi


#############################################################################

# Loop
## While loop
i=0
while <condition>;do
<command>
done

i=0
while [${i} -lt 10];do
    echo "${i}"
    i=$((1+i))
done

i=0
while ((i <= 10)); do
    echo "${i}"
    i=$((1+i))
done

## for loop
for i in {1..10}
do
    echo "Task ${1}"
    sleep 1
done

#############################################################################

# getting result to null space
grep "Hello" "output.txt" 1> /dev/null # put output into null space (not show)
grep "Hello" "output.txt" 2> /dev/null # put error into null space (not show)


#############################################################################

# function
printHello() {
    echo "Hello World"
    return 0 # return success
}

var=$(printHello)

echo "${var}"

## with argument
printHello() {
    echo "${1} ${2}"
    return 0
}

var=$(printHello "Hello" "World")
echo "${var}"