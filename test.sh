#!/bin/sh
# runtest.sh (main driver script)

# babel round trips (too many levels!)
popdir=`pwd`
cd ../../src
export BABEL="`pwd`/babel"
cd ../test
export ROUNDTRIP="`pwd`/roundtrip"
cd $popdir

# Sh the tests as well--we'd obviously like translation
#  to be relatively fast, even on large numbers of files!

# roundtrip formats (for looping in runtest0.sh and runtest1.sh)
export roundformats="alc bs caccrt c3d1 c3d2 cml box dmol feat gpr hin"
export roundformats="${roundformats} bin mmd mol mmads pdb bgf smi mol2"
export roundformats="${roundformats} unixyz vmol xyz crk2d crk3d"

# not used currently -- just make sure there's a test file for each format
# export informats=""

# output-only formats (for looping in runtest0.sh and runtest1.sh)
export outformats="cacint cache cht ct cssr fh inp gau gr96A gr96N jin"
export outformats="${outformats} csr nw pov report qcin fix txyz txt xed zin"

# Delete old data in subdirectories
rm -f car/* cml/* dmol/* gamout/* gpr/* ins/* jout/* mmod/* mol/* 2>/dev/null
rm -f mol2/* mopout/* mpqc/* pdb/* qcout/* smi/* xyz/* crk2d/* 2>/dev/null
rm -f crk3d/* 2>/dev/null

#
#
# Now start the tests!
# We're going to create a "results-${DATE}.txt" file with some header info.
#  and all the results will go in there
# 

# First off, let's get some ID information for this test box
DATE=`date "+%Y-%m-%d"`
FILE="results-${DATE}.txt"

echo "Open Babel roundtrip test results" >${FILE}
${BABEL} --version >>${FILE}
echo >>${FILE}
date >>${FILE}
echo >>${FILE}
uname -a >>${FILE}
echo >>${FILE}
echo >>${FILE}

# runtest.0 will:
# * create a fresh new subdirectory
# * copy in the original test file
# then go to work

# **************************
# *** ROUNDTRIP testing ***
# **************************

# 2D CML
sh scripts/runtest0.sh cml curan >>${FILE} 2>&1
# 3D CML
sh scripts/runtest0.sh cml 417 >>${FILE} 2>&1
# Z-Matrix CML
sh scripts/runtest0.sh cml ascorbic1 >>${FILE} 2>&1

# Chemical Resource Kit (CRK)
sh scripts/runtest0.sh crk2d test >>${FILE} 2>&1
sh scripts/runtest0.sh crk3d test >>${FILE} 2>&1

# DMol3 with unit cell (silicon bulk)
sh scripts/runtest0.sh dmol si >>${FILE} 2>&1

# Ghemical Project
sh scripts/runtest0.sh gpr estradiol >>${FILE} 2>&1

# MacroModel
sh scripts/runtest0.sh mmod Model1-1142 >>${FILE} 2>&1

# 2D MDL Molfile
sh scripts/runtest0.sh mol yohimbine >>${FILE} 2>&1
# 2D MDL Molfile with radical and implicit H's
sh scripts/runtest0.sh mol EthylISIS >>${FILE} 2>&1
# 2D MDL Molfile with radical
sh scripts/runtest0.sh mol phenyl >>${FILE} 2>&1
# 3D MDL Molfile
sh scripts/runtest0.sh mol 3d.head >>${FILE} 2>&1

# Sybyl Mol2 (created via Ghemical)
sh scripts/runtest0.sh mol2 aromtest >>${FILE} 2>&1
# Sybyl Mol2 (creased/used with Dock)
sh scripts/runtest0.sh mol2 dock_nrg >>${FILE} 2>&1

# Small PDB
sh scripts/runtest0.sh pdb TRP >>${FILE} 2>&1
# "Big" PDB (HIV-1 Protease) 3491 atoms
#sh scripts/runtest0.sh pdb 1hvc >>${FILE} 2>&1

# SMILES (multiple lines)
sh scripts/runtest0.sh smi test >>${FILE} 2>&1
# SMILES with radicals
sh scripts/runtest0.sh smi RadIn1 >>${FILE} 2>&1

# c60 (XYZ)
# Plays havoc with bond typing
sh scripts/runtest0.sh xyz buckyball >>${FILE} 2>&1
# Periodic Table (XYZ) Elements 1-109 H-Mt
# Plays havoc on some formats w/o esoteric atom typing
sh scripts/runtest0.sh xyz table >>${FILE} 2>&1
# Multi-molecule XYZ file
sh scripts/runtest0.sh xyz met-enkaphalin_movie >>${FILE} 2>&1
# HMX (lots o' nitro-groups)
sh scripts/runtest0.sh xyz hmx >>${FILE} 2>&1
# Random (piped from /dev/random one day. Not really a molecule at all)
# Used to make sure we don't crash when given nasty stuff
#  (should probably use the same type of random data for other formats too)
# Currently disabled
# sh scripts/runtest0.sh xyz random >>${FILE} 2>&1

# **************************
# *** INPUT-ONLY testing ***
# runtest1.sh does the same for runtest0.sh except for an input-only format
# (i.e. no roundtrip testing, but validation can occur)
# **************************

# MSI Biosym/Insight II CAR
sh scripts/runtest1.sh car benzene >>${FILE} 2>&1

# benzenefulonamide (GAMESS-US Output)
sh scripts/runtest1.sh gamout benzenesulfonamide >>${FILE} 2>&1

# ShelX INS
sh scripts/runtest1.sh ins vinigrol >>${FILE} 2>&1
sh scripts/runtest1.sh ins pli222 >>${FILE} 2>&1

# oligopyrrole (Jaguar Output)
sh scripts/runtest1.sh jout 3-pyrrole >>${FILE} 2>&1

# MPQC Output (borane and h2o)
sh scripts/runtest1.sh mpqc b2h6 >>${FILE} 2>&1
sh scripts/runtest1.sh mpqc h2o >>${FILE} 2>&1

# Ethanol (MOPAC 7 Output)
sh scripts/runtest1.sh mopout Ethanol >>${FILE} 2>&1

# oligothiophene (Q-Chem Output)
sh scripts/runtest1.sh qcout 3-thio >>${FILE} 2>&1

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