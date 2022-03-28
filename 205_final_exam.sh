# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [VALUE]
#starts the modifications
BEGIN{FS="\t"}
{
#skips line 1
if (NR!=1){
#checks if the pokemon is legendary
if ($12="False"){
#if is not legendary increases nl by 1
nl+=1
#increases the value of hp by the value shown in column 6
hp+=$6
# increases def by the value shown in column 8
def+=$8
#Counts the number of lines in the file
sum+=1
}
}
}
END{
# Prints the required values and the text
value_3 = nl
value_2 = def/nl
value_1 = hp/nl
print "Total Non-Legendary Pokemon:" value_3
print "Avg. HP:" value_1
print "Avg. Defense:" value_2
}

#    Avg. HP: [VALUE]
#    Avg. Defense: [VALUE]
# ======= END SUMMARY =======

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.
