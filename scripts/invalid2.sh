#!/bin/sh

# invalid2.sh

# $1 primary file suffix (".foo")
# $2 secondary file suffix (".bar")
# $3 file root ("test")

# test.foo to test.bar only -- these are invalid formats and won't really work
$BABEL -i$1 invalid/$3.$1 -oxyz invalid/$3.xyz

