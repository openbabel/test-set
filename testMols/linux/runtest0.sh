#!/bin/sh

# runtest0.sh (inner driver script)

# $1 is main suffix (e.g. mol, cml...)
# $2 is file root (e.g. test...)
echo ------------------- testing $2.$1-------------------------

sh ./foo2bar2foo.sh $1 cml $2
sh ./foo2bar2foo.sh $1 feat $2
sh ./foo2bar2foo.sh $1 sdf $2
sh ./foo2bar2foo.sh $1 mol $2
sh ./foo2bar2foo.sh $1 unixyz $2
sh ./foo2bar2foo.sh $1 vmol $2
sh ./foo2bar2foo.sh $1 xyz $2
sh ./foo2bar2foo.sh $1 pdb $2
sh ./foo2bar2foo.sh $1 alc $2
sh ./foo2bar2foo.sh $1 c3d1 $2
sh ./foo2bar2foo.sh $1 c3d2 $2
sh ./foo2bar2foo.sh $1 hin $2
sh ./foo2bar2foo.sh $1 mmod $2
sh ./foo2bar2foo.sh $1 mol2 $2

echo ".... output only ..."
sh ./foo2bar.sh $1 cacint $2
sh ./foo2bar.sh $1 cache $2
sh ./foo2bar.sh $1 cssr $2
sh ./foo2bar.sh $1 gamin $2
sh ./foo2bar.sh $1 jin $2
sh ./foo2bar.sh $1 csr $2
sh ./foo2bar.sh $1 nw $2
sh ./foo2bar.sh $1 qcin $2
sh ./foo2bar.sh $1 txt $2
sh ./foo2bar.sh $1 bgf $2
sh ./foo2bar.sh $1 report $2
sh ./foo2bar.sh $1 gr96N $2
sh ./foo2bar.sh $1 caccrt $2
