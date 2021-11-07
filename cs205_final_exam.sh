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

#!/bin/bash

#create a variable for the file being passed in
FILE=$1


#loop over the lines in the file
for n in $(cat $FILE);
do

        #find the total # of pokemon
	totalCount=$1

	#get the total number of hp points
	totalHP+=$6

	#get the average # of hp
	avgHP=totalHP/totalCounter
	#find the total attack points
	totalAtk+=$7

	#find the average points
	avgAtk=totalAtk/totalCount


done




echo "======= SUMMARY OF POKEMON.DAT ======"
echo "    Total Pokemon: [$totalCount]     "
echo "    Avg. HP: [$avgHP]                "
echo "    Avg. Attack: [$avgAtk]           "
echo "     ======= END SUMMARY =======     "
