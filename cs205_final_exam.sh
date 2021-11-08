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

BEGIN{FS = "\t"}
{
if (NR != 1){
# Adds ups the total number of Attack on the Pokemon listed in the file 
sum_of_attack += $7
# Adds up the total number of HP on the Pokemon listed in the file
sum_of_hp += $6
# Counts the number of pokemon in the file
num_of_pokemon += 1
# Calculates the average health points of the Pokemon
average_health_points = sum_of_hp / num_of_pokemon
# Calculates the average attack of the of the Pokemon
average_attack_points = sum_of_attack / num_of_pokemon
}
}
END{
# prints title in the file
print "======= SUMMARY OF POKEMON.DAT ======"
# Prints the number of pokemon in the file
print "   Total Pokemon: ", num_of_pokemon
# Prints the mean average health points (HP) of the Pokemon
print "   Avg. HP: ", average_health_points
# Prints the mean average attack of the Pokemon
print "   Avg. Attack: ", average_attack_points
# Print the end of summary message
print "======= END SUMMARY ======="
}

