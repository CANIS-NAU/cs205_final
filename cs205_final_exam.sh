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

#file path for pokemon file
file="pokemon.dat"

#uses awk to print num of lines and stores it to the varaible Lines
Lines=$(awk 'END{print NR}' $file)

#uses awk to add up all the hp stats then prints the average hp by dividing by num lines then stores it to the variable HP
HP=$(awk '{HP+=$6}END{print HP/NR}' $file)

#uses awk to add up all the attack stats then prints the average attack by dividing by num lines then stores it to the varabile attack 
ATK=$(awk '{ATK+=$7}END{print ATK/NR}' $file)

#prints output
echo "======= SUMMARY OF POKEMON.DAT ======"
echo "   Total Pokemon: " $Lines
echo "   Avg. HP: " $HP
echo "   Avg. Attack: " $ATK
echo "======= END SUMMARY ======="


