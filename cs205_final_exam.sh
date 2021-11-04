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

# using awk, go to the end of the file and capture the last value in the first column
awk 'END{print "Total Pokemon: " NR}' pokemon.dat

# using awk, start at the beginning and go to the end getting a total of all the hp stats, then divide by a running total of the number of pokemon
awk 'BEGIN{FS="\t"}{avg += $6 / (800)}END{print "Avg. HP: " avg}' pokemon.dat

# repeat the same step as the last command but use the values in the attack stat column
awk 'BEGIN{FS="\t"}{avg += $7 / (800)}END{print "Avg, Attack: " avg}' pokemon.dat
