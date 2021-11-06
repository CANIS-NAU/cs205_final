# TODO: Modify this file to create a shell script that is able to use awk to go
# through a file formatted like pokemon.dat and provides a printed report in the
# following format (where your script correctly calculates the values that go
# into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

BEGIN{FS="\t"}{
if (NR!=1){
	
	#Counts the total hp
	total+=$6

	#Counts the number of lines in the file
	sum+=1

	# Count the total attack
	attack+=$7
}
}
END{

# Print the top header
print "======= SUMMARY OF POKEMON.DAT ======"

# Prints the number of lines in the file
print "    Total Pokemon: " sum

# Calculate the average hp
average = total/sum

# Prints the average hp
print "    Avg. HP: " average

# Calculate the average attack
averageAtk = attack/sum

# Print the average attack
print "    Avg. Attack: " averageAtk

# Print the bottom line
print "======= END SUMMARY ======="
}







# The "Avg." values should be calculated as mean values for the corresponding
# columns.
# The spacing and header formatting should match the above formatting
# description exactly.
# There should be a comment explaining the purpose of each line in your shell
# script. 
# The data file will be passed in to the script as a positional parameter and
# will not necessarily be called pokemon.dat. However, you can assume that any
# file passed to this script will be formatted exactly the way pokemon.dat is
# formatted.
