#!/bin/sh

# bar2foo.sh

# $1 primary file suffix (".foo")
# $2 secondary file suffix (".bar")
# $3 file root ("test")

# test.foo to test.bar only

obabel -i$1 $1/$3.$1 -o$2 $1/$3.$2
# This script is called for input-only formats
#  so we must validate our results!
roundtrip $1/$3.$1 $1/$3.$2
