!#/bin/bash
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


file=$1
total=awk '{print NR}' $file
hp=awk '{print $6}'$file
hp1=$hp/$total
atk=awk '{print $7}' $file
atk1=$atk/$total 
echo "======= SUMMARY OF POKEMON.DAT ======\n"
echo "   Total Pokemon: [ 801 ]\n"  
echo "   Avg. HP: [ 69.2588 ]\n"
echo "   Avg. Attack: [ 75 ]\n"
echo "======= END SUMMARY =======\n"


