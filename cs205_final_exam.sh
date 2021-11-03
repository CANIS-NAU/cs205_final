
# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======


#gets the file 
FILE=$1
#output of the title
echo "======= SUMMARY OF POKEMON.DAT ======"
#gets and prints number of pokemon 
awk 'END{print "    Total Pokemon: ", NR}' $FILE
#finds average of the HP
awk '{sum+=$6}END{print "    Avg. HP: ",sum/NR}' $FILE
#finds and prints average attack
awk '{sum+=$7}END{print "    Avg. Attack: ",sum/NR}' $FILE
#outputs the end summary echo statement
echo "======= END SUMMARY ======="


# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
 