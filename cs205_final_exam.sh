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

#!bin/bash

FILE=$1 # Set file name to first argument passed 

if [ -e $FILE ] # If the file exists then continues otherwise exit
then
	# Prints in the beginning of the formatted summary
	awk 'BEGIN{print "======= SUMMARY OF POKEMON.DAT ======"}' $FILE

	# Print the total pokemon by taking line total and subtracting one for beginning line
	awk 'END{print "   Total Pokemon:", NR-1}' $FILE

	# Prints the health average by taking sum of every hp from column 6 and then dividing that by the total pokemon
	awk '{hpsum+=$6;}END{print "   Avg. HP:", hpsum/(NR-1)}' $FILE

	# Prints the attack average by taking the sum of every attack from column 7 and then dividing that by the total pokemon
	awk '{atksum+=$7;}END{print "   Avg. Attack:", atksum/(NR-1)}' $FILE

	# Print the end of the formatted summary 
	awk 'BEGIN{print "======= END SUMMARY ======="}' $FILE
fi


