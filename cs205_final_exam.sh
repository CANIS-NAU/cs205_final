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

# Print empty line for readability and file name for summary
echo
echo " ======= SUMMARY OF $1 ======"


# Start a loop over the data with awk to find sum
echo "    " $(awk 'BEGIN{FS="\t"}
{ 
if(NR!=1)
{ 
sum+=1
hp+=$6
attack+=$7
}
} 
END{
 print "\n    Total Pokemon: ",sum
}' "$1")

# Start a loop over the data with awk to find hp
echo "    " $(awk 'BEGIN{FS="\t"}
{ 
if(NR!=1)
{ 
sum+=1
hp+=$6
attack+=$7
}
} 
END{
 print "\n    Avg. HP: ", hp/sum
}' "$1")

# Start a loop over the data with awk to find attack
echo "    " $(awk 'BEGIN{FS="\t"}
{ 
if(NR!=1)
{ 
sum+=1
hp+=$6
attack+=$7
}
} 
END{
 print "\n    Avg. Attack: ", attack/sum
}' "$1")

# Echo the end line statement
echo " ======= END SUMMARY ======="
echo
