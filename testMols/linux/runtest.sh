#!/bin/sh

# runtest.sh (main driver script)

# babel round trips
export PATH=$PATH:../src

# Time the tests as well--we'd obviously like translation
#  to be relatively fast, even on large numbers of files!

# runtest.0 will:
# * delete old files, plus the subdirectory
# * create a fresh new subdirectory
# * copy in the original test file
# then go to work

# 2D CML
time sh ./runtest0.sh cml curan

# 3D CML
time sh ./runtest0.sh cml 417

# Z-Matrix CML
time sh ./runtest0.sh cml ascorbic1

# 2D MDL Molfile
time sh ./runtest0.sh mol yohimbine

# Sybyl Mol2
time sh ./runtest0.sh mol2 aromtest

# Ghemical Project
time sh ./runtest0.sh gpr estradiol

# SMILES (multiple lines)
time sh ./runtest0.sh smi test

# Small PDB
time sh ./runtest0.sh pdb TRP

# Big PDB
time sh ./runtest0.sh pdb 1hvc

# c60
time sh ./runtest0.sh xyz buckyball

# Periodic Table
time sh ./runtest0.sh xyz table



