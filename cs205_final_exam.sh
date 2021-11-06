#!/bin/bash

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


# Start the awk script, necessary for the script to run
BEGIN{FS="\t"}
{
# If the line is not the first line being processed, skips the column line explaining what each column does
if (NR!=0){

    # If we have only counted one line, we need to skip this conditional, as otherwise we will get a bad result as we go into this conditional one too many times
    if (NR!=1)
    {
        # Add the value of the 6th field, which is the hp column, to a count that will be used later
        hp+= $6

        # Add the value of the 7th field, which is the attack column, to a count that will be used later
        attack+= $7

        # Add one to the value of the divisor for when we calculate averages for health and attack
        sum_for_calc+=1
    }

#Counts the number of lines in the file, necessary as we need to count the 1st line in this count but not the count for calculations
sum_of_lines+=1

}
}

# Start the end of the awk script, necessary for an awk script to run
END{
# Print out the heading with the file name
printf(" ======= SUMMARY OF POKEMON.DAT ====== \n")

# Prints the number of lines in the file, necessary to print the value on the screen
printf("   Total Pokemon: %d \n", sum_of_lines)

# Prints the average hp of pokemon in the file, necessary to print the value on the screen
printf("   Avg. HP: %f \n", hp/sum_for_calc)

# Print out the average attack of pokemon in the file, necessary to print the value on the screen
printf("   Avg. Attack: %f \n", attack/sum_for_calc)

# Print out the ending statement of output, necessary for output format
printf(" ====== END SUMMARY ======\n")}

