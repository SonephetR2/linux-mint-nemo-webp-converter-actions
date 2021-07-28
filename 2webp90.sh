#!/usr/bin/env bash

for FILE in "$@"
do
 echo "converting file: $FILE"
 EXT=${FILE##*.}
 QUALITY=90 # quality of output image as a percentage value (1–100)
 cwebp -q $QUALITY -af "$FILE" -o "${FILE/%.$EXT/.webp}"
done

# Output can be adapted based on https://developers.google.com/speed/webp/docs/cwebp
