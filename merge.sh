#!/bin/bash

str="# My CheatSheet: C Programming Language"
gen="cheatsheet.docx"
doc="docs"

echo "$str" > "$gen"

for file in $(ls "$doc/" | sort -n); do
	con=$(cat "$doc/$file")

	echo >> "$gen"
	echo "$con" >> "$gen"
done