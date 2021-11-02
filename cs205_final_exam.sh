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

# ====== SCRIPT =======
# Section Numbe: 001
# Last Name: Liu
# First Name: Pengfei
# NAU Username: pl384
BEGIN{FS = "\t"}
{
	if (NR != 1){
	#Counts the number of lines in the file
		sum += 1
	#TODO change HP to add up the number of HP on the Pokemon listed
		hp += 1
		hp_sum += $6
		hp_average_mean = hp_sum / hp
		attack_sum += $7
		attack_average_mean = attack_sum / hp
	}
}
END{
# Prints the number of lines in the file
	print "Total Pokemon: " sum
	print "AVg. HP: " hp_average_mean
	print "Avg. Attack: " attack_average_mean
}

