# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

#begin the awk script
BEGIN{FS="\t"}
{
# test for number of lines 	
if (NR !=1){

# calc total pokemon
totalPokemon+=1

# calc hp
hp+=$6

# calc attack
attack+=$7
}
}

# end the awk script
END{

#print the table header
print "======= SUMMARY OF POKEMON.DAT ======"

#print the subtitle and total pokemon
print "    Total Pokemon:  " totalPokemon

#print subtitle and avg hp
print "    Avg. HP:  " hp/totalPokemon

#print subtitle and avg attack
print "    Avg. Attack: " attack/totalPokemon

#print end 
print "======= END SUMMARY ======="}


# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.
