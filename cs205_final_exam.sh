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

# Begin line by line file parsing
BEGIN{FS="\t"}
{
# Check if the current line is not the first one
if(NR!=1){
# For each line, add one to poke_total to calculate the total number of pokemon
poke_total+=1
# For each line, add the current pokemon's hp value to the variable hp
hp+=$6
# For each line, add the current pokemon's attack value to the attacks variable
attacks+=$7
}
}
# Enter end step
END{
# Print header
print "======= SUMMARY OF POKEMON.DAT ======="
# Print the total number of pokemon using poke_total
print "Total Pokemon: ", poke_total
# Print the average hp value using the hp variable divided by poke_total
print "Avg. HP: ", hp/poke_total
# Print the average attack value using the attacks variable divided by poke_total
print "Avg. Attack: ", attacks/poke_total
# Print the end summary header
print "======= END SUMMARY ======="
}
