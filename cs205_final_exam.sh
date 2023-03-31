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

#This is the code that prints the header
echo "======= SUMMARY OF POKEMON.DAT ======"
#This awk command gives the total number of pokemon, and discludes the header line
awk 'END{print "Total Pokemon: ", NR-1}' pokemon.dat
#This awk command gives the Avg. HP by adding all the HP values in $5 and dividing by number of Pokemon
awk '{sum+=$5} END{print "Avg. HP: " sum/(NR-1)}' pokemon.dat
#This awkcommand gives the Avg. Attack by doing what the previous line does but with $6
awk '{sum_attack+=$6} END{print "Avg. Attack: " sum_attack/(NR-1)}' pokemon.dat
#This line of code prints the footer line 
echo "======= END SUMMARY ======="









