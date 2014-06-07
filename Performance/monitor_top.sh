#! /bin/bash
DIR=$(dirname $0)
cd $DIR
((cd ..;./Main) &
bash "$DIR/top_data.sh" Main)

OUT_FILE="processed_data"

if [ -e $OUT_FILE ]; then
    ./Process > "$OUT_FILE 2.txt"
else
    ./Process > "$OUT_FILE.txt"
fi
