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

BEGIN{FS="\t"}
{
# checks that the number of records is not 1
	if (NR!=1){
		# adds up all of the hp
		hp+=$6
		# adds up all of the attack points
		attack$=$7
		# variable to hold the total number of pokemon
		sum+=1
	}
}
END{
# prints the output specified by the instructions
print "======= SUMMARY OF POKEMON.DAT ======\n"
print "   Total Pokemon: " sun " \n"
print "   Avg. HP: " hp/sum " \n"
print "   Avg. Attack: " attack/sum " \n"
print "======= END SUMMARY =======\n"
}
