#!/bin/sh

# runtest1.sh (inner driver script for input-only file formats)

# $1 is main suffix (e.g. mol, cml...)
# $2 is file root (e.g. test...)

mkdir -p $1
cp ../../original/$2.$1 $1

echo "------------------- testing $2.$1-------------------------"

echo ".... roundtrip testing ..."
for out in alc bs caccrt c3d1 c3d2 cml box dmol feat gpr hin bin mmd mol \
    mmads pdb bgf smi mol2 unixyz vmol xyz; do
 echo $1 "->" $out " + validation "
 sh ./bar2foo.sh $1 $out $2
done

echo ".... output only ..."
for out in cacint cache ct cssr fh inp gau gr96A gr96N jin csr nw pov report \
    qcin fix txyz txt xed; do
 echo $1 "->" $out
 sh ./foo2bar.sh $1 $out $2
done
