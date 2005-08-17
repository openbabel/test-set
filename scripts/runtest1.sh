#!/bin/sh

# runtest1.sh (inner driver script for input-only file formats)

# $1 is main suffix (e.g. mol, cml...)
# $2 is file root (e.g. test...)

# this is where the translated result files will go
wd="`pwd`/scripts"
cd files/
file=`echo $2 | cut -f 1 -d '.'`

mkdir $1 2>/dev/null
cp ../original/$2 $1

echo "------------------- testing $2-------------------------"

echo ".... roundtrip testing ..."
for out in ${roundformats}; do
 echo $1 "->" $out " + validation "
 sh ${wd}/bar2foo.sh $1 $out $file
done

echo ".... output only ..."
for out in ${outformats}; do
 echo $1 "->" $out
 sh ${wd}/foo2bar.sh $1 $out $file
done
