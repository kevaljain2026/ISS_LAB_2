#!/bin/bash
grep -v '^[[:space:]]*$' quotes.txt | awk '!keval[$0]++' > /dev/stdout

