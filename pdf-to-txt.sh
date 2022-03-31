#!/bin/bash

OLDIFS=$IFS
IFS=','

INPUT_LIST=filenames.csv
INPUT_DIR=data/nat-ai/orig
OUTPUT_DIR=data/nat-ai/text

echo "Converting PDF to text"
echo "Input list (CSV): $INPUT_LIST"
echo "Input directory:  $INPUT_DIR"
echo "Output directory: $OUTPUT_DIR"

[ ! -f $INPUT_LIST ] && { echo "$INPUT_LIST file not found"; exit 99; }
while read Country CountryCode Language Year Title Filename URL AIWatchURL
do
    if [[ $Filename == *.pdf ]]
    then
        OUTPUT="$Year-$CountryCode-$Language.txt"
        echo "Input : $Filename"
        echo "Output: $OUTPUT"
        java -jar lib/pdfbox-app-3.jar export:text --input=$INPUT_DIR/$Filename --output=$OUTPUT_DIR/$OUTPUT
    fi
done < $INPUT_LIST
IFS=$OLDIFS
