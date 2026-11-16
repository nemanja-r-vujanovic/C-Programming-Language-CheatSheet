#!/bin/bash

str="# My CheatSheet: C Programming Language"
out="README.md"
dir="docs"

echo "$str" > "$out"

for fil in $(ls "$dir/" | sort -n); do
	hea=$(cat "$dir/$fil" | head -n 1)

	echo -e "\n[$hea]($dir/$fil)" >> "$out"
done