#!/bin/sh

# runtest.sh (main driver script)

# babel round trips
export PATH=$PATH:../src

# Time the tests as well--we'd obviously like translation
#  to be relatively fast, even on large numbers of files!
time sh ./runtest0.sh cml curan

time sh ./runtest0.sh mol2 aromtest

time sh ./runtest0.sh gpr estradiol

time sh ./runtest0.sh pdb TRP

time sh ./runtest0.sh xyz buckyball

time sh ./runtest0.sh xyz table



