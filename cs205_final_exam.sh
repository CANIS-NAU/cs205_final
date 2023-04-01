1 #!/bin/bash
2
3 filename=$1
4
5 total=$(awk 'END {print NR}' $filename)
6
7 avg_hp=$(awk '{sum += $3} END {print sum / NR}' $filename)
8
9 avg_attack=$(awk '{sum += $4} END {print sum / NR}' $filename)
10
11 echo "======= SUMMARY OF $filename ======"
12 echo "# Total Pokemon: $total"
13 echo "# Avg. HP: $avg_hp"
14 echo "# Avg. Attack: $avg_attack"
15 echo "# ======= END SUMMARY =======#"
16 
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
#
