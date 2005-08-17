#!/bin/sh

# runtest2.sh (inner driver script for testing "invalid" data on multiple formats)

# $1 is file name (e.g. test...)

# this is where the translated result files will go
wd="`pwd`/scripts"
cd files/
file=`echo $1 | cut -f 1 -d '.'`

mkdir invalid 2>/dev/null
cp ../invalid/$1 invalid

echo "------------------- testing invalid data $1-------------------------"

echo ".... roundtrip testing ..."
for input in ${roundformats}; do
 echo $input " -> xyz"
 sh ${wd}/invalid.sh $input $1
done

echo ".... input testing ..."
for input in ${informats}; do
 echo $input " -> xyz"
 sh ${wd}/invalid.sh $input $1
done
