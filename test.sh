#!/bin/sh
# runtest.sh (main driver script)

# babel round trips (too many levels!)
popdir=`pwd`
cd ../../src
export BABEL="`pwd`/babel"
cd ../test
export ROUNDTRIP="`pwd`/roundtrip"
cd $popdir

# roundtrip formats (for looping in runtest0.sh and runtest1.sh)
export roundformats="alc bgf box bs c3d1 c3d2 caccrt cml crk2d crk3d"
export roundformats="${roundformats} ct dmol feat fract gpr hin mmd mol"
export roundformats="${roundformats} mol2 mopcrt pdb pqs pcm smi tmol"
export roundformats="${roundformats} unixyz vmol yob xyz"

# ideally, make sure there's a test file for each format
# also used for invalid file testing in runtest2.sh
export informats="car ccc g03 g98 gamout ins jout mopout mpqc nwo prep"
export informats="${informats} pc qcout"

# output-only formats (for looping in runtest0.sh and runtest1.sh)
export outformats="cache cacint cht com csr cssr fh fix fs gamin gr96"
export outformats="${outformats} inchi jin mpqcin mpd nw pov qcin"
export outformats="${outformats} report txyz xed zin"

# Delete old data in subdirectories
cd files/
rm -f car/* cml/* crk2d/* crk3d/* dmol/* g03/* g98/* gamout/* 2>/dev/null
rm -f gpr/* ins/* jout/* mmod/* mol/* mol2/* mopout/* mpqc/* 2>/dev/null
rm -f pdb/* qcout/* smi/* xyz/* invalid/* fract/* yob/* pcm/* 2>/dev/null
cd $popdir

#
# Now start the tests!
# We're going to create a "results-${DATE}.txt" file with some header info.
#  and all the results will go in there
# 

# First off, let's get some ID information for this test box
DATE=`date "+%Y-%m-%d"`
FILE="results-${DATE}.txt"

echo "Open Babel roundtrip test results" >${FILE}
${BABEL} -v >>${FILE} 2>/dev/null
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
sh scripts/runtest0.sh cml curan.cml >>${FILE} 2>&1
# 3D CML
sh scripts/runtest0.sh cml 417.cml >>${FILE} 2>&1
# Z-Matrix CML
sh scripts/runtest0.sh cml ascorbic1.cml >>${FILE} 2>&1

# Chemical Resource Kit (CRK)
sh scripts/runtest0.sh crk2d test.crk2d >>${FILE} 2>&1
sh scripts/runtest0.sh crk3d test.crk3d >>${FILE} 2>&1

# DMol3 with unit cell (silicon bulk)
sh scripts/runtest0.sh dmol si.dmol >>${FILE} 2>&1

# Ghemical Project
sh scripts/runtest0.sh gpr estradiol.gpr >>${FILE} 2>&1

# MacroModel
sh scripts/runtest0.sh mmod Model1-1142.mmod >>${FILE} 2>&1

# 2D MDL Molfile
sh scripts/runtest0.sh mol yohimbine.mol >>${FILE} 2>&1
# 2D MDL Molfile with radical and implicit H's
sh scripts/runtest0.sh mol EthylISIS.mol >>${FILE} 2>&1
# 2D MDL Molfile with radical
sh scripts/runtest0.sh mol phenyl.mol >>${FILE} 2>&1
# 3D MDL Molfile
sh scripts/runtest0.sh mol 3d-head.mol >>${FILE} 2>&1

# Sybyl Mol2 (created via Ghemical)
sh scripts/runtest0.sh mol2 aromtest.mol2 >>${FILE} 2>&1
# Sybyl Mol2 (created/used with Dock)
sh scripts/runtest0.sh mol2 dock_nrg.mol2 >>${FILE} 2>&1

# Small PDB (one TRP residue)
sh scripts/runtest0.sh pdb TRP.pdb >>${FILE} 2>&1
# Small PDB (crambin) 327 atoms
sh scripts/runtest0.sh pdb 1crn.pdb >>${FILE} 2>&1
# Small PDB (carbon nanotube) 316 atoms
sh scripts/runtest0.sh pdb nanotube.pdb >>${FILE} 2>&1
# "Big" PDB (HIV-1 Protease) 3491 atoms
# sh scripts/runtest0.sh pdb 1hvc.pdb >>${FILE} 2>&1

# SMILES (multiple lines)
sh scripts/runtest0.sh smi test.smi >>${FILE} 2>&1
# SMILES with radicals
sh scripts/runtest0.sh smi RadIn1.smi >>${FILE} 2>&1
# SMILES with DOS line endings (aromatics and pseudo-aromatics)
sh scripts/runtest0.sh smi aromatic.smi >>${FILE} 2>&1
# SMILES with Mac line endings
sh scripts/runtest0.sh smi test-mac.smi >>${FILE} 2>&1

# c60 (XYZ)
# Plays havoc with bond typing
sh scripts/runtest0.sh xyz buckyball.xyz >>${FILE} 2>&1
# Periodic Table (XYZ) Elements 1-109 H-Mt
# Plays havoc on some formats w/o esoteric atom typing
sh scripts/runtest0.sh xyz table.xyz >>${FILE} 2>&1
# Partial Aromatic NTCDI (XYZ)
sh scripts/runtest0.sh xyz ntcdi.xyz >>${FILE} 2>&1
# Multi-molecule XYZ file
sh scripts/runtest0.sh xyz met-enkaphalin_movie.xyz >>${FILE} 2>&1
# HMX (lots o' nitro-groups)
sh scripts/runtest0.sh xyz hmx.xyz >>${FILE} 2>&1
# single He atom (check atom typing and z-matrix tranforms work)
sh scripts/runtest0.sh xyz He.xyz >>${FILE} 2>&1

# "Free Form Fractional"
sh scripts/runtest0.sh fract ZnO.fract >>${FILE} 2>&1

# PCModel
sh scripts/runtest0.sh pcm example.pcm >>${FILE} 2>&1

# Yasara .yob
sh scripts/runtest0.sh yob yami.yob >>${FILE} 2>&1

# **************************
# *** INPUT-ONLY testing ***
# runtest1.sh does the same for runtest0.sh except for an input-only format
# (i.e. no roundtrip testing, but validation can occur)
# **************************

# MSI Biosym/Insight II CAR
sh scripts/runtest1.sh car benzene.car >>${FILE} 2>&1

# benzenefulonamide (GAMESS-US Output)
sh scripts/runtest1.sh gamout benzenesulfonamide.gamout >>${FILE} 2>&1

# Cr inorganic complex (Gaussian98 Output)
sh scripts/runtest1.sh g98 cotton.g98 >>${FILE} 2>&1
# Graphite 2D sheet (with periodic boundary conditions) Gaussian03 Output
sh scripts/runtest1.sh g03 graphite.g03 >>${FILE} 2>&1

# ShelX INS
sh scripts/runtest1.sh ins vinigrol.ins >>${FILE} 2>&1
sh scripts/runtest1.sh ins pli222.ins >>${FILE} 2>&1

# oligopyrrole (Jaguar Output)
sh scripts/runtest1.sh jout 3-pyrrole.jout >>${FILE} 2>&1

# MPQC Output (borane and h2o)
sh scripts/runtest1.sh mpqc b2h6.mpqc >>${FILE} 2>&1
sh scripts/runtest1.sh mpqc h2o.mpqc >>${FILE} 2>&1

# Ethanol (MOPAC 7 Output)
sh scripts/runtest1.sh mopout Ethanol.mopout >>${FILE} 2>&1

# oligothiophene (Q-Chem Output)
sh scripts/runtest1.sh qcout 3-thio.qcout >>${FILE} 2>&1

# Pubchem ID 837481
sh scripts/runtest1.sh pc pubchem-837481.pc >>${FILE} 2>&1

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

# ****************************
# *** NASTY FAILURE testing **
# ****************************

# These are intended to all fail. Several are generic tests that will be run
# over all formats via runtest2.sh and invalid.sh
# Others are specific to a format (e.g., negative # of atoms, etc.)
# These use runtest3.sh and invalid2.sh (and don't loop at all)

# Random (piped from /dev/random one day. Not really a molecule at all)
# Used to make sure we don't crash when given nasty stuff
sh scripts/runtest2.sh random >>${FILE} 2>&1
sh scripts/runtest2.sh random2 >>${FILE} 2>&1
sh scripts/runtest2.sh random3 >>${FILE} 2>&1

# Random (piped from /dev/random one day. Not really a molecule at all)
# Run through gzip  -- to challenge the gzip encoding/decoding procedures
sh scripts/runtest2.sh random4 >>${FILE} 2>&1
sh scripts/runtest2.sh random5 >>${FILE} 2>&1

# A completely empty file
# Some formats have crashed when encountering such a file
sh scripts/runtest2.sh empty >>${FILE} 2>&1

# Invalid XYZ files
sh scripts/runtest3.sh xyz invalid.xyz >>${FILE} 2>&1
sh scripts/runtest3.sh xyz invalid2.xyz >>${FILE} 2>&1
sh scripts/runtest3.sh xyz invalid3.xyz >>${FILE} 2>&1

# Invalid MDL Molfiles
sh scripts/runtest3.sh mol hmx.mol >>${FILE} 2>&1
sh scripts/runtest3.sh mol hmx2.mol >>${FILE} 2>&1
sh scripts/runtest3.sh mol hmx3.mol >>${FILE} 2>&1
sh scripts/runtest3.sh mol hmx4.mol >>${FILE} 2>&1
sh scripts/runtest3.sh mol hmx5.mol >>${FILE} 2>&1
sh scripts/runtest3.sh mol hmx6.mol >>${FILE} 2>&1
