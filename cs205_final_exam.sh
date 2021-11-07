#!/bin/bash
# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
#======= END SUMMARY =======
awk 'BEGIN{FS="\t"}
{
	if (NR!=0){
		#change HP to add up the number of HP on the Pokemon listed
		hp+=$6

		#Counts the number of lines in the file
		sum+=1

		#add up total attack 
		atk+=$7
	}
}
END{
#Prints the hp divided by total number of pokemon which is the MEAN value
print "The Total lines are: " sum
print "Avg. HP: " hp/sum
print "Avg. Attak: " atk/sum
}' $1
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.
