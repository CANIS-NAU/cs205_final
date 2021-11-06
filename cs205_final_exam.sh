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
FILE=$1
# for loop that's supposed to go through each line
for VARIABLE in $(cat $FILE); do
	# variable that gets reassigned to the num at the current line in the first column to get the total number of pokemon
	total=$1
	# variable that adds each val in column six
	totalHP+=$6
	# variable that gets the average HP by dividing totalHP by the total
	avgHP=$totalHP/$total
	# variable that adds each attack val in column seven
	totalAtk+=$7
	# variable that gets the average Atk by dividing the totalAtk by the total
	avgAtk=$totalAtk/$total
done
echo "======= SUMMARY OF POKEMON.DAT ======="
echo "   Total Pokemon: [$total]"
echo "   Avg. HP: [$avgHP]"
echo "   Avg. Attack: [$avgAtk]"
echo "======= END SUMMARY ======="
