#!/bin/bash

OLDIFS=$IFS
IFS=','

INPUT_LIST=filenames.csv
INPUT_DIR=data/nat-ai/orig
OUTPUT_DIR=data/nat-ai/text
PDFBOX_JAR=lib/pdfbox-app-3.jar

echo "Extract text from PDF files"
echo "PDFBox jar file:   $PDFBOX_JAR"
echo "Input list (CSV):  $INPUT_LIST"
echo "Input directory:   $INPUT_DIR"
echo "Output directory:  $OUTPUT_DIR"
echo ""

[ ! -f $PDFBOX_JAR ] && { echo "$PDFBOX_JAR file not found"; exit 99; }
[ ! -f $INPUT_LIST ] && { echo "$INPUT_LIST file not found"; exit 99; }
[ ! -d $INPUT_DIR ] && { echo "$INPUT_DIR directory not found"; exit 99; }
[ ! -d $OUTPUT_DIR ] && { echo "$OUTPUT_DIR directory not found"; exit 99; }

while read Country CountryCode Language Year Title Filename URL AIWatchURL
do
    if [[ $Filename == *.pdf ]]
    then
        OUTPUT="$Year-$CountryCode-$Language.txt"
        echo "Input : $Filename"
        echo "Output: $OUTPUT"
        echo ""
        java -jar $PDFBOX_JAR export:text --input=$INPUT_DIR/$Filename --output=$OUTPUT_DIR/$OUTPUT
    fi
done < $INPUT_LIST

IFS=$OLDIFS
