#!/bin/sh

# runtest.sh (main driver script)

# babel round trips (too many levels!)
popdir=`pwd`
cd ../../../../src
export BABEL="`pwd`/babel"
cd ../test/
export ROUNDTRIP="`pwd`/roundtrip"
cd $popdir

# Time the tests as well--we'd obviously like translation
#  to be relatively fast, even on large numbers of files!

# roundtrip formats (for looping in runtest0.sh and runtest1.sh)
export roundformats="alc bs caccrt c3d1 c3d2 cml box dmol feat gpr hin"
export roundformats="${roundformats} bin mmd mol mmads pdb bgf smi mol2"
export roundformats="${roundformats} unixyz vmol xyz"

# not used currently -- just make sure there's a test file for each format
# export informats=""

# output-only formats (for looping in runtest0.sh and runtest1.sh)
export outformats="cacint cache cht ct cssr fh inp gau gr96A gr96N jin"
export outformats="${outformats} csr nw pov report qcin fix txyz txt xed zin"

# Delete old data in subdirectories
rm -f car/* cml/* dmol/* gamout/* gpr/* ins/* jout/* mmod/* mol/* 2>/dev/null
rm -f mol2/* mopout/* mpqc/* pdb/* qcout/* smi/* xyz/* 2>/dev/null

# runtest.0 will:
# * create a fresh new subdirectory
# * copy in the original test file
# then go to work

# **************************
# *** ROUNDTRIP testing ***
# **************************

# 2D CML
time sh ./runtest0.sh cml curan
# 3D CML
time sh ./runtest0.sh cml 417
# Z-Matrix CML
time sh ./runtest0.sh cml ascorbic1

# DMol3 with unit cell (silicon bulk)
time sh ./runtest0.sh dmol si

# Ghemical Project
time sh ./runtest0.sh gpr estradiol

# MacroModel
time sh ./runtest0.sh mmod Model1-1142

# 2D MDL Molfile
time sh ./runtest0.sh mol yohimbine
# 2D MDL Molfile with radical and implicit H's
time sh ./runtest0.sh mol EthylISIS
# 2D MDL Molfile with radical
time sh ./runtest0.sh mol phenyl
# 3D MDL Molfile
time sh ./runtest0.sh mol 3d.head

# Sybyl Mol2 (created via Ghemical)
time sh ./runtest0.sh mol2 aromtest
# Sybyl Mol2 (creased/used with Dock)
time sh ./runtest0.sh mol2 dock_nrg

# Small PDB
time sh ./runtest0.sh pdb TRP
# "Big" PDB (HIV-1 Protease) 3491 atoms
# time sh ./runtest0.sh pdb 1hvc

# SMILES (multiple lines)
time sh ./runtest0.sh smi test
# SMILES with radicals
time sh ./runtest0.sh smi RadIn1

# c60 (XYZ)
# Plays havoc with bond typing
time sh ./runtest0.sh xyz buckyball
# Periodic Table (XYZ) Elements 1-109 H-Mt
# Plays havoc on some formats w/o esoteric atom typing
time sh ./runtest0.sh xyz table
# Multi-molecule XYZ file
time sh ./runtest0.sh xyz met-enkaphalin_movie
# HMX (lots o' nitro-groups)
time sh ./runtest0.sh xyz hmx

# **************************
# *** INPUT-ONLY testing ***
# runtest1.sh does the same for runtest0.sh except for an input-only format
# (i.e. no roundtrip testing, but validation can occur)
# **************************

# MSI Biosym/Insight II CAR
time sh ./runtest1.sh car benzene

# benzenefulonamide (GAMESS-US Output)
time sh ./runtest1.sh gamout benzenesulfonamide

# ShelX INS
time sh ./runtest1.sh ins vinigrol
time sh ./runtest1.sh ins pli222

# oligopyrrole (Jaguar Output)
time sh ./runtest1.sh jout 3-pyrrole

# MPQC Output (borane and h2o)
time sh ./runtest1.sh mpqc b2h6
time sh ./runtest1.sh mpqc h2o

# Ethanol (MOPAC 7 Output)
time sh ./runtest1.sh mopout Ethanol

# oligothiophene (Q-Chem Output)
time sh ./runtest1.sh qcout 3-thio

# We currently need example files for the following input-only format testing
# Amber PREP
# CCC
# NWChem Output


# **************************
# *** OUTPUT-ONLY testing **
# **************************

# We currently need some sample output-only formats for common molecules
# (for preliminary work, let's use Babel 1.6)
# Then we output and run "diff" to ensure no problems

# Cacao Internal
# CAChe MolStruct
# ChemDraw connection table
# Chemtool
# CSD CSSR
# Fenske-Hall Z-Matrix
# GAMESS Input
# Gaussian Cartesian / Input
# GROMOS96
# Jaguar Input
# MSI Quanta CSR
# NWChem Input
# POV-Ray Output
# Report
# Q-Chem Input
# SMILES Fix
# Tinker XYZ
# Titles
# XED
# ZINDO Input