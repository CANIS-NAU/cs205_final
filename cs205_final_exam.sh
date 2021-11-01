# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholder

#positional parameter for pokemon file to be entered (or any file)

FILE=$1

#finds avg hp in column 6

awk '{sum+=$6}END{print "Average HP: ",sum/NR}' $1


#Counts the number of lines in the file
# Prints the number of lines in the file

awk 'END{print "Number of lines: ", NR}' $1


#finds average attack in column 7
awk '{sum+=$7}END{print "Average Attack: ",sum/NR}' $1



printf "SUMMARY OF POKEMON.DAT"
printf "Total Pokemon: ", NR
printf "Avg. HP: ", sum/NR
printf "Avg. Attack: ", sum/NR
printf "END SUMMARY"
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.
