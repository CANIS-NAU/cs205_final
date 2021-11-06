#!/bin/bash

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

FILE=$1 #Stores the value of argument two as the file name. 

if [ -e "$FILE" ]; then #if file exists continue
        total=$(awk -F "\t" 'NR>1 {sum+=1} END {print sum}' $FILE) #Set awk response to variable total. Tab as field separator. Ignore first(heading) line. Count lines of file (pokemon).
        hp=$(awk -F "\t" 'NR>1 {sum+=1} NR>1 {hpsum+=$6} END {print hpsum/sum}' $FILE) #Set awk response to variable hp. Tab field separator. Ignore first line. Count lines. Sum column 6 (hp). Set varialbe equal to hp summation divided by total pokemon.
        attack=$(awk -F "\t" 'NR>1 {sum+=1} NR>1 {attacksum+=$7} END {print attacksum/sum}' $FILE) #Set awk response to variable hp. Tab field separator. Ignore first line. Count lines. Sumcolumn 7(attack). Set variable equal to attack summation divided by total pokemon.




        echo " ======= SUMMARY OF POKEMON.DAT ======" #Echo response with correct format and variable values.
        echo "    Total Pokemon: $total"
        echo "    Avg. HP: $hp"
        echo "    Avg. Attack: $attack"
        echo " ======= END SUMMARY ======="

else #If file does not exit echo text with file name.
        echo "The file: "$FILE" does not exist." #Print text with file name if file does not exit.
        exit 1 #Exit code with errors.
fi #End if then else statement.
# TOD: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.
