#!/usr/bin/env bash

for FILE in "$@"
do
 echo "converting file: $FILE"
 EXT=${FILE##*.}
 cwebp "$FILE" -o "${FILE/%.$EXT/.png}"
done

# Output can be adapted based on https://developers.google.com/speed/webp/docs/dwebp
