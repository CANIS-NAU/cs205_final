
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

#!/bin/bash

#assuming each line is one pokemon's stats, the number of pokemon == line count - header
#calculates Avg HP
BEGIN {FS="\t"} {sum_hp+=$4} 

#calculated Avg. Attack
{FS="\t"} {sum_att+=$5} 

#prints evaluated num of pokemon to console
{print "Total Pokemon:" NR}
#prints avg hp of pokemon to console
{print "Avg. HP:"} {print sum_hp / NR}

#prints avg attack of pokemon to console
{print "Avg. Attack:"}
END {print sum_att / NR}



