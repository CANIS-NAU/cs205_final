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

#This echo command prints the header
echo "======= SUMMARY OF POKEMON.DAT ======"
#This awk command finds the total pokemon by subtracting the headerline 
awk 'END{print "Total Pokemon: ",NR-1}' pokemon.dat

#This awk command finds the average value  of the HP column and subtracts the header line
awk '{sum += $5} END {print "Avg. HP: ", sum/(NR-1)}' pokemon.dat 

#This awk command calculates the Average Value of the Attack column and subtracts the divisor by One to account for the header line
awk '{sum_attack+=$6} END {print "Avg. Attack: ", sum_attack/(NR-1)}' pokemon.dat

#This echo command prints the last line
echo "======= END SUMMARY ======="

