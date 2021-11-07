# Author: Gavin Nelson
# Name: cs205_final_exam
# NAU cs205 Fall 2021 final submission for Gavin Nelson
# Version 1.0
# Date: 11/7/2021

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

# search though pokemon.dat file and count number of lines that start with a number 0-9(to skip the first line)
awk '/^[0-9]/{a++}END{print "Total Pokemon: " a}' pokemon.dat
# search though pokemon.dat file and count the total HP and then divide by number of results to get avg 
awk '{total += $6} END {print "Avg. HP: " total/NR}' pokemon.dat
# search though pokemon.dat file and count the total Attack values and then divide by number of results to get avg 
awk '{total += $7} END {print "Avg. Attack: " total/NR}' pokemon.dat