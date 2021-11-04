# Carson Pociask
# CS205 - 001: Final Exam Part II
# 4 November 2021

# Beginning of script

# Capture the command line argument to store the file in a variable
FILE=$1

# Do not do any processing if the file does not exist. Protects from file error.
if [ -e $FILE ]
then
	# Display the header
	awk 'BEGIN{ print "======= SUMMARY OF POKEMON.DAT ======" }' $FILE

	# Sum the total number of pokemon and subtract 1 so we don't counter the header line as a pokemon
	awk 'END{ print "   Total Pokemon: ", NR-1 }' $FILE

	# Sum the total HP value for all pokemon and average them
	awk '{ hp+=$6; }END{ print "   Avg. HP: ", hp/(NR-1) }' $FILE

	# Sum the total attack value for all pokemon and average them
	awk '{ attack+=$7; }END{ print "   Avg. Attack: ", attack/(NR-1) }' $FILE

	# Display the trailer
	awk 'BEGIN{ print "======= END SUMMARY =======" }' $FILE
fi

# End of script

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.
