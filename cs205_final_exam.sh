# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format
# (where your script correctly calculates the values that go into the [VALUE] placeholders):

# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. 
# However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

#!/bin/sh

# The Script Starts Here...
# Creating the Header:
echo "======= SUMMARY OF POKEMON.DAT ======="

# Finding the total amount of pokemon in pokemon.dat using wc, then printing the output to the screen:
TOTPOKE=`wc -l < pokemon.dat`
echo "Total Pokemon: $TOTPOKE"

#Finding the avg. HP, then printing it to the screen:
AVGHP=0
echo "Avg. HP: $AVGHP"

# Finding the avg. Attack, then printing it to the screen:
ATTK=0
echo "Avg. Attack: $ATTK"

# Creating the Footer:
echo "======= END SUMMARY ======="
#
#
#
