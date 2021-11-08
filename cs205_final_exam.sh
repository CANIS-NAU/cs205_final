
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

#!/usr/bin/bash

# path to the file
file_path="/home/m/mmd378/Desktop/FINAL/cs205_final/pokemon.dat"

#sets initial variable for # of lines, summed hp, and summed attack 
awk 'BEGIN{
hp+=0
lines=0
attack+=0
}
#adds to each value by iterating through each line in file
{
#number of lines increases by one
lines++
#adds to total sum of all values in column 5
hp+=$5
#adds to total sum of all values in column 6
attack+=$6
}

#prints all final calculations
END{
print "Total Pokemon: ",lines
print "Average HP: ", hp/lines
print "Average Attack: ", attack/lines
}' $file_path

