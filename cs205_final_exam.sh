# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======
#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <data_file>"
    exit 1
fi

# Extract values from the data file using awk
total_pokemon=$(awk -F'\t' 'END { print NR }' "$1")
mean_health=$(awk -F'\t' '{ sum += $6 } END { total = sum/NR; print total }' "$1")
mean_attack=$(awk -F'\t' '{ sum += $7 } END { total = sum/NR; print total }' "$1")

# Print the summary report
echo "======= SUMMARY OF POKEMON.DAT ======="
echo "   Total Pokemon: $total_pokemon"
echo "   Avg. HP: $mean_health"
echo "   Avg. Attack: $mean_attack"
echo "======= END SUMMARY ======="

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.
