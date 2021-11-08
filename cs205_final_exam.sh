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

# assign variable to the first positional to represent the file input
FILE=$1
# variable representing total number of pokemon
total=0
# variable representing average hp
avghp=0
# variable representing average attack
avgatt=0

# start awk command
# first increments total for every line
# then adds the sum of the hp column to avghp
# then adds the sum of the attack column to avgatt
# after processing the lines, calculates the attack and hp averages by dividing avghp and avgatt by total
# then prints formatting structure and results including total, avghp, and avgatt
awk '
{total=total+1}
{avghp=avghp+$5}
{avgatt=avgatt+$6}
END {print "===== SUMMARY OF POKEMON.DAT ====="}
END {print "   Total Pokemon: " total}
END {avghp=avghp/total}
END {avgatt=avgatt/total}
END {print "   Avg. HP: " avghp}
END {print "   Avg. Attack: " avgatt}
END {print "===== END SUMMARY ====="}
' $FILE
