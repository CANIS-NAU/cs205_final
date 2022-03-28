# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):

# find the corresponding values
total=$(awk '{ if( $13 == "False" || $12 == "False" ) count++ } END { print count }' $1)
avgHP=$(awk '{ if( $13 == "False" ) {count += $5} else if(( $12 ++ "False" )) count += $4} END { print count/NR }' $1)
avgDF=$(awk '{ if( $13 == "False" ) {count += $7} else if(( $12 ++ "False" )) count += $6 } END { print count/NR }' $1)


# display formatted values
echo "======= SUMMARY OF POKEMON.DAT ======"
echo "   Total Non-Legendary Pokemon: $total" 
echo "   Avg. HP: $avgHP"
echo "   Avg. Defense: $avgDF"
echo "======= END SUMMARY ======="

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.
