#!/bin/sh

# invalid.sh

# $1 primary file suffix ("foo")
# $2 file name ("random.xyz")

# test.foo to test.xyz only (all these should fail, so we don't roundtrip)
$BABEL -i$1 invalid/$2 -oxyz invalid/$2.$1.xyz
