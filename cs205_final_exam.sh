#!/usr/bin/sh
# We need this shebang so that other shells can execute this file.
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

# run a big ol' awk script from a string
awk '
# reads our file with tab delimited values
BEGIN{FS="\t"}
{
  # dont count the header line
  if (NR!=1){
    # hp is 6th column
    hp+=$6
    # atk is 7th
    atk += $7

    #Counts the number of lines in the file
    sum+=1
  }
}
# when the file is at the end
END{
# Prints the summary of the lines
  print "======= SUMMARY OF POKEMON.DAT ======\n" "   Total Pokemon: " sum "\n","  Avg. HP: "hp/sum "\n" "   Avg. Attack: " atk/sum "\n" "======= END SUMMARY ======="
}' $1
# pass in the first positional parameter to the awk script