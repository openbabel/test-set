#!/bin/sh

# runtest.sh (main driver script)

# babel round trips
export PATH=$PATH:../src

sh ./runtest0.sh cml test2d
sh ./runtest0.sh cml test3d

sh ./runtest0.sh mol test2d
sh ./runtest0.sh mol test3d

sh ./runtest0.sh mol2 test
sh ./runtest0.sh pdb test
sh ./runtest0.sh xyz test


