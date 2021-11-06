#!/usr/bin/awk -f

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
# 001
# Hammond
# Marshall
# mmh627

BEGIN{FS="\t"}
{
if (NR!=1){
#Adds the total HP of all the pokemon
hp+=$6
#Adds the total attack of all the pokemon
atk+=$7
#Counts the number of Pokemon
tot+=1
}
}
END{
# Prints the total amount of pokemon, their average HP, and their average attack
print "======= SUMMARY OF POKEMON.DAT ======"
print "   Total Pokemon: "tot""
print "   Avg. HP: "hp/tot""
print "   Avg. Attack: "atk/tot""
print "======= END SUMMARY ======="
 }
