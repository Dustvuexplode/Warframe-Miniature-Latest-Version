#!/bin/sh
OUTPUT=directory_summary.txt
echo "Directory Summary" > "$OUTPUT"
count=0
for file in *
do
if [ -f "$file" ]; then
echo "$file" >> "$OUTPUT"
count=$((count+1))
fi
done
echo "Total Files: $count" >> "$OUTPUT"
echo "Summary saved to $OUTPUT"
