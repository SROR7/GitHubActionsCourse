#!/bin/bash

# sec/test.sh

# Remove spaces around the = sign in Bash variable assignment
EXPECTED="Hello, test!"

# Capture output from Node.js
OUTPUT=$(node -e "console.log(require('./src/app')('test'))")

# Compare values
if [ "$OUTPUT" = "$EXPECTED" ]; then
    echo "Test passed!"
    exit 0
else
    echo "Test failed: expected '$EXPECTED' but got '$OUTPUT'"
    exit 1
fi