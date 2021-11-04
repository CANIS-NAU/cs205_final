#!/bin/bash
# Get positional parameter
FILE=$1
echo "======= SUMMARY OF POKEMON.DAT ======"
# One liner awk, -F specifies the tab delimeter the file has
# NR!=1 specifies to skip the first line in the file (since it's headers)
# and it is here that total line count, hp, and attack is added up
# END prints out the results in the correct format
awk -F'\t' 'NR!=1{hp+=$6;att+=$7;line_count+=1;} END{print "Total Pokemon: " line_count; print "Avg. HP: " hp / line_count; print "Avg. Attack: " att / line_count}' ${FILE}
echo "======= END SUMMARY ======="
