#!/bin/bash

ALL="All properties.txt"
IDE="IDE.txt"
rm -f "$ALL"
rm -f "$IDE"

for FILE in styles/*.txt; do
	HEADER=${FILE#*_}
	HEADER=${HEADER%.*}
	printf "# ${HEADER^^}\n" >> "$ALL"
	cat "$FILE" >> "$ALL"
	DATA=$(grep -v '^\s*$' "$FILE" | tr '\n' ',' | sed 's/.$//')
	printf "${DATA}," >> "$IDE"
done
