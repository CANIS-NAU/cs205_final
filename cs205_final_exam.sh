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

# go through data line by line
awk 'BEGIN{FS="\t"}
{
if (NR!=1){

# add hp in column 6
hp+=$6

# add attack in column 7
attack+=$7

#Counts the number of lines in the file
sum+=1
}
# get average of all the pokemon hp
avgHP = hp/sum

# get average of all pokemon attack
avgAttack = attack/sum}
END{
  # Prints the number of pokemon in the file
  printf "Total pokemon: %d\n", sum

  # prints the average hp
  printf "Avg. HP: %d\n", avgHP

  # prints the average attack
  printf "Avg. Attack: %d\n", avgAttack
}' pokemon.dat
