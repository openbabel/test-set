#!/bin/sh

# runtest3.sh (inner driver script for testing "invalid" data in one format)

# $1 is main suffix (e.g. mol, cml...)
# $2 is file root (e.g. test...)

# this is where the translated result files will go
wd="`pwd`/scripts"
cd files/
file=`echo $2 | cut -f 1 -d '.'`

mkdir invalid 2>/dev/null
cp ../invalid/$2 invalid

echo "------------------- testing invalid file $2-------------------------"

echo $1 "-> xyz"
sh ${wd}/invalid2.sh $1 xyz $file
