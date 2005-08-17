#!/bin/sh

# runtest0.sh (inner driver script)

# $1 is main suffix (e.g. mol, cml...)
# $2 is file name (e.g. test...)

# this is where the roundtrip result files will go
wd="`pwd`/scripts"
cd files/
file=`echo $2 | cut -f 1 -d '.'`

echo $file

mkdir $1 2>/dev/null
cp ../original/$2 $1

echo "------------------- testing $2-------------------------"

echo ".... roundtrip testing ..."
for out in ${roundformats}; do
 if [ "$1" != "$out" ]; then
     sh ${wd}/foo2bar2foo.sh $1 $out $file
 fi
done

echo ".... output only ..."
for out in ${outformats}; do
 echo $1 "->" $out
 sh ${wd}/foo2bar.sh $1 $out $file
done
