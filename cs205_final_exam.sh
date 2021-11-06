#!/bin/bash

awk -F'\t' '/^[0-9]/{ # Tells awk to use tabs as delimiter and to only use lines that start with a number \
		numLines += 1; # totals up the number of lines \
		totalHP += $6; # total up the HP stat\
		totalAttack += $7 # totals up the Attack stat\
	}\
	END {\
		print "======= SUMMARY OF POKEMON.DAT ======";\
		print "   Total Pokemon: " numLines; # prints out the total number of pokemon/lines \
		print "   Avg. HP: " totalHP/numLines; # prints out the totalHP divided by total number of pokemon to get avg \
		print "   Avg. Attack: " totalAttack/numLines; # prints out the totalAttack divided by total number of pokemon to get avg\
		print "======= END SUMMARY ======="\
	}' $1

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


