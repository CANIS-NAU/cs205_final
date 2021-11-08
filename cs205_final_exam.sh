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
# get file from positional parameter
# sum hp column
#
FILE=$1
awk -F'\t' 'NR>1 {hp+=$5;}' pokemon.dat
#
# sum attack column
awk -F'\t' 'NR>1 {atk+=$6}' FILE
#
# sum number of pokemon (rows)
awk 'END{pokemon=NR-1}' FILE
#
# calculate hp average
hp_avg=hp/pokemon
#
# calculate atk average
atk_avg=atk/pokemon
#
# print summary header
print "======= SUMMARY OF $FILE ======"
#
# print total pokemon
print "Total Pokemon: " 
# print average hp
print "Avg. HP: " hp/pokemon
# print average attack
print "Avg. Attack: " atk/pokemon
# print end summary
print "======= END SUMMARY ======="