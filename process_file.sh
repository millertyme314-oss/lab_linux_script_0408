#!/bin/bash 
## What is the technical term for the code on Line 1 : shebang line
## What does it accomplish: provides explicit instruction for CLI on language to use to interpret

INPUT_FILE="input/test.txt"
OUTPUT_DIR="output"
OUTPUT_FILE="output/processed.txt"
ARCHIVE="archive/safe.txt" 

mkdir -p "$OUTPUT_DIR"
mkdir -p "$ARCHIVE"

if [ ! -f "$INPUT_FILE" ]; then
echo "Error: Input file not found...Tighten up!"
exit 1
fi

##Explain lines 11 - 13. What are they and where are they used later in the script?

##If the input file is not found/flagged, then script/process will terminate 
##and return a non-zero exit status, signaling an error

echo "Processing file: $INPUT_FILE"
while IFS= read -r line
do
    
processed_line="PROCESSED: $(echo "$line" | tr '[:lower:]' '[:upper:]')"
archived_stuff="ARCHIVED: $(echo "$line" | tr '[:lower:]' '[:upper:]')"

#Archive the processed line    
echo "$processed_line" >> "$OUTPUT_FILE"
echo $archived_line" >> "$ARCHIVE"

done < "$INPUT_FILE"
echo "Done!"
echo "Processed lines have been saved to: $OUTPUT_FILE"
