#!/bin/sh

# foo2bar2foo.sh (roundtrip testing)

# $1 primary file suffix (".foo")
# $2 secondary file suffix (".bar")
# $3 file root ("test")

# test.foo to test.bar and roundtrip to test.bar.foo

obabel -i$1 $1/$3.$1 -o$2 $1/$3.$2
obabel -i$2 $1/$3.$2 -o$1 $1/$3.$2.$1

