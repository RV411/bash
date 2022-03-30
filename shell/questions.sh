#!/bin/sh


#?veryfied if the inputs are number
if [ $# -ne 2 ]  #if two inputs are not received from standar input
then
    echo "usage - $0 x y " # Usage - ./1.sh x y
    echo " where x and y are two nos for which I will print sum"
    exit 1
fi
    echo "Sum of $1 and $2 is 'expr $1+$2'"


#? Reverse input
if [ $# -ne 1 ]  #if two inputs are not received from standar input
then
    echo "usage - $0 number " # Usage - ./1.sh x y
    echo "I will find reverse of given number"
    echo " $0 0123 I will print 3210"
    exit 1
fi

n=$1
rev=0
sd=0

while [$n -gt 0]
do
    sd='expr $n % 10'
    rev='expr $rev \* 10 + $sd'
    n='expr $n / 10'
done
    echo "Reverse number is $rev"


#? Veryfi if directory exist

if [-d $mydir]
then
echo "Directory exists"
fi

#? CLI

#En todos los texts buscar uno que tenga la palabra edureka
find / -name *.txt | xargs grep -i edureka

