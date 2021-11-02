#!/bin/bash

# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

# capture the filename pos argument
DATA_FILE=$1

if [ -f $DATA_FILE ]
then
# print output start block
echo "# ======= SUMMARY OF ${DATA_FILE^^} ======"

# get total pokemon and print using NR variable
awk 'END{print "#    Total Pokemon: " NR-1}' $DATA_FILE

# get average HP by summing and incrementing; print formatted result
awk -F "\t" '{if (NR!=1) {sum += $6; n++}} END {if (n>0) print "#    Avg. HP: " sum / n}' $DATA_FILE


# get average attack by summing and incrementing; print formatted result
awk -F "\t" '{if (NR!=1) {sum += $7; n++}} END {if (n>0) print "#    Avg. Attack: " sum / n}' $DATA_FILE

# print end of execution block
echo "# ======= END SUMMARY ======="

else
	echo "$DATA_FILE does not exist."
fi
