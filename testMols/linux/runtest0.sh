#!/bin/sh

# runtest0.sh (inner driver script)

# $1 is main suffix (e.g. mol, cml...)
# $2 is file root (e.g. test...)

rm -f $1/*
cp original/$2.$1 $1

echo "------------------- testing $2.$1-------------------------"

echo ".... roundtrip testing ..."
for out in alc bs caccrt c3d1 c3d2 cml box dmol feat gpr hin bin mmd mol \
    mmads pdb bgf smi mol2 unixyz vmol xyz; do
 echo $1 "->" $out "->" $1
 sh ./foo2bar2foo.sh $1 $out $2
done

# echo ".... input only ..."
# We currently need example files for the following format testing
# Amber PREP
# CCC
# GAMESS Output
# Jaguar Output
# MSI Biosym/Insight II CAR
# MOPAC Output
# MPQC
# NWChem Output
# Q-Chem Output

echo ".... output only ..."
for out in cacint cache ct cssr fh inp gau gr96A gr96N jin csr nw pov report \
    qcin fix txyz txt xed; do
 echo $1 "->" $out
 sh ./foo2bar.sh $1 $out $2
done
