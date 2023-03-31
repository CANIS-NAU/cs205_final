# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

#!/bin/bash

# set the input file name
input_file="pokemon.dat"

# print top title line
echo "======= SUMMARY OF POKEMON.DAT ======"

# use awk to count the number of lines in the input file
line_count=$(awk 'END{print NR}' $input_file)

# since there are one pokemon per line, print the line count
echo "Total Pokemon: $line_count"

# use awk to calculate the average HP in the 23rd column
HPaverage=$(awk '{sum+=$23} END {print sum/NR}' $input_file)

# print the average to the console
echo "Avg. HP: $HPaverage"

# use awk to calculate the attack average
ATTACKaverage=$(awk '{sum+=$33} END {print sum/NR}' $input_file)

# print the average attack 
echo "Avg. Attack: $ATTACKaverage"

# print the bottom summary line
echo "======= END SUMMARY ======="

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.
