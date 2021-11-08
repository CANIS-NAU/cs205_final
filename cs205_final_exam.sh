# Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

# begin the awk script
BEGIN{FS="\t"}
{B
# check that the file contains more than one line
if (NR!=1){

	# finds the total number of pokemon by adding up each line of file 
	sum+=1

	# finds the total amount of hp points (col 6)
	hp+=$6

	# find the attack values (col 7)
	attack+=$7
}
}
#end the awk script 
END{
# prints the total number of pokemon
print "Total pokemon " sum
# prints the average HP of the pokemon
print "Avg. HP: " (hp / sum)
# prints the avg attack value of the pokemon
print "Avg. Attack: " (attack / sum) }
