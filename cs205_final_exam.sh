#!/usr/bin/bash

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

# Ask the User for file path
read -p "Enter the file you want analyzed: " x

# Save the user input as a variable
file_path= ${x}

awk 'BEGIN{FS="\t"}
{
	# Check to see if this is not the first record in the file
	if (NR!=1){

		# Keep track to amke sure that this is not a repeating pokemon
		if(tracker != $1){
			# Add up the total amount of HP values
			hp += $6

			# Add up the total ammount of attack values
			attack += $7

			# Make sure that this is not a repeating pokemon
			tracker = $1

			# Track the total non-repeating records of HP Values
			hp_rows++

			# Track the total non-repeating records of attack values
			attack_rows++
			}

		#Counts the number of lines in the file
		sum++

    }

}END{
	# Display a new line at the begining for clarity
	printf("\n")

	# Displays the total number of pokemon
    print "Total Pokemon: ", sum

	# Displays the total avaerage HP values
    print "Avg. HP: ", hp/hp_rows

	# Displays the total avergae attack values
	print "Avg. Attack: ", attack/attack_rows

	# Displays a new line at the end for clarity
    printf("\n")

	# This makes sure that the users file is the one calculated
}' $file_path


