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

# Get the input file string
FILE=$1

# AWK command containing an AWK script and specifying the input as the value of FILE
awk \
'BEGIN {
    # Set field seperator to tab character
    FS="\t"
}
{
    if (NR != 1) {
        #Counts the number of lines in the file
        lines += 1

        # Sum the total HP of all Pokemon in the file
        hp += $6

        # Sum the total attack values of all Pokemon in the file
        attack += $7
    }   
}
END {
    # Calculate average HP from total HP
    hp /= lines

    # Calculate average attack from total attack
    attack /= lines

    # Prints beginning of format
    print "======= SUMMARY OF POKEMON.DAT ======"

    # Prints the total number of Pokemon
    printf("Total Pokemon: %d\n", lines)

    # Prints the average HP
    printf("Avg. HP: %d\n", hp)

    # Prints the average attack
    printf("Avg. Attack: %d\n", attack)

    # Prints the end of the format
    print "======= END SUMMARY ======="
}' \
$FILE
