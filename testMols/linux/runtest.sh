#!/bin/sh

# runtest.sh (main driver script)

# babel round trips
export PATH=$PATH:../src

# Time the tests as well--we'd obviously like translation
#  to be relatively fast, even on large numbers of files!

# delete old data in subdirectories
rm -f cml/* mol/* mol2/* gpr/* smi/* pdb/* xyz/* jout/* 2>/dev/null
rm -f qcout/* mpqc/* gamout/* mopout/* 2>/dev/null

# runtest.0 will:
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
#time sh ./runtest0.sh smi test

# Small PDB
time sh ./runtest0.sh pdb TRP

# Big PDB
time sh ./runtest0.sh pdb 1hvc

# c60
time sh ./runtest0.sh xyz buckyball

# Periodic Table
time sh ./runtest0.sh xyz table

# *** INPUT-ONLY testing ***
# runtest1.sh does the same for runtest0.sh except for an input-only format
# (i.e. no roundtrip testing, but validation can occur)

# oligopyrrole (Jaguar Output)
time sh ./runtest1.sh jout 3-pyrrole

# oligothiophene (Q-Chem Output)
time sh ./runtest1.sh qcout 3-thio

# borane (MPQC Output)
time sh ./runtest1.sh mpqc b2h6

# water (MPQC Output)
time sh ./runtest1.sh mpqc h2o

# GAMESS-US Output
time sh ./runtest1.sh gamout benzenesulfonamide

# MOPAC Output
time sh ./runtest1.sh mopout Ethanol

# We currently need example files for the following input-only format testing
# Amber PREP
# CCC
# MSI Biosym/Insight II CAR
# NWChem Output
