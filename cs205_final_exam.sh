# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):

BEGIN{FS="\t"} { # Execute commands after every line in the file

if (NR!=1) { # Skip first line of file (it is simply a header)
TOTAL+=1 # Sum the total number of pokemon in the file
HP+=$6 # Sum the HP of every pokemon
ATK+=$7 # Sum the attack level of every pokemon
}

}

END { # Execute commands before exiting
print "======= SUMMARY OF POKEMON.DAT ======\n" # Print header of summary with a new line appended to the end
print "   Total Pokemon:", TOTAL, "\n" # Print the total with the TOTAL variable and a new line appeneded to the end
print "   Avg. HP:", HP / TOTAL, "\n" # Print the average HP with the HP variable divided by TOTAL to calculate the average, with a new line appended to the end
print "   Avg. Attack:", ATK / TOTAL, "\n" # Print the average attack with the ATK variable divided by TOTAL to calculate the average, with a new line appended to the end
print "======= END SUMMARY =======" # Print footer of summary
}

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.
