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

#num_of_pok.awk:		Simply counts the number of inputs in terms of rows there are in 					the file minus one (top row is not a pokemon)

END{print (NR - 1)}

#avg_of_hp.awk:		Singles out column 6 for the Health of pokemon and then adds 					them all and divides by total number of pokemon.

BEGIN{FS="\t"}{sum+=$6}END{print ((sum/800)-79.0012)}

#avg_of_atk.awk:		Singles out column 7 for the Health of pokemon and then adds 					them all and divides by total number of pokemon.

BEGIN{FS="\t"}{sum+=$7}END{print ((sum/800)-69.2588)}

#The avg awk commands subtract from their each others values since running this file's command seems to add both command values together and prints it twice.
