#!/bin/bash 

## What is the technical term for the code on Line 1 : shebang line
## What does it accomplish: provides explicit instruction for CLI on language to use to interpret

INPUT_FILE="input/test.txt"
OUTPUT_DIR="output"
OUTPUT_FILE="output/processed.txt"

mkdir -p "$OUTPUT_DIR"

if [ ! -f "$INPUT_FILE" ]; then
echo "Error: Input file not found...Tighten up!"
exit 1
fi

echo "Processing file: $INPUT_FILE"
while IFS= read -r line
do
    
processed_line="PROCESSED: $(echo "$line" | tr '[:lower:]' '[:upper:]')"

    
echo "$processed_line" >> "$OUTPUT_FILE"

done < "$INPUT_FILE"
echo "Done!"
echo "Processed lines have been saved to: $OUTPUT_FILE"

