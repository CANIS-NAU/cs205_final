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

#starts the script
BEGIN{FS="\t"}
{
#if the Numbered Row does not = 1, run this command
if (NR!=1){
#counts the amount of HP
hp+=$6
#counts the number of pokemon in the file
sum+=1
#divides the HP by the number of pokemon in the file
averageHP = hp/sum
}
#if the Numbered Row does not = 1, run this command
if (NR!=1){
#adds amount of total attack
atk+=$7
#divides the attack by the number of pokemon in the file
averageAtk = atk/sum
}
}
#ends the program
END{
#prints what is given with actual values
print "======= SUMMARY OF POKEMON.DAT ======"
print "Total Pokemon: " sum
print "Avg. HP: " averageHP
print "Avg. Attack: " averageAtk
print "======= END SUMMARY ======="
}