#! /usr/bin/awk -f
# start script and line count
BEGIN{count = 0}
# for each line in file add 1 to count
{count++}
# finds sum of hp
{HP_SUM = HP_SUM + $6}
# find the sum of atk
{ATTACK_SUM = ATTACK_SUM + $7}

END{

        print "===== SUMMARY OF DATA FILE ====="
        print " File name: " FILENAME
        print " Total Pokemon: " count
        print " Avg. HP: " HP_SUM/count 
        print "Avg. Attack: " ATTACK_SUM/count
        print "===== END SUMMARY ====="

}
# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):

# print===== SUMMARY OF DATA FILE =====
#    File name: [VALUE]
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ===== END SUMMARY =====

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.
