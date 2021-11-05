# TODO: Modify this file to create a shell script that is able to use awk to 
# go through a file formatted like pokemon.dat and provides a printed report 
# in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. 
# However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

# Recieve file name
FILE="$1"

# Outputs table header
echo "======= SUMMARY OF POKEMON.DAT ======"
# Outputs total pokemon by adding 1 every line
awk -v outputText='   Total Pokemon: ' 'BEGIN{FS="\t"}{if (NR!=1){sum+=1}}END{print outputText sum}' $1
# Outputs avg hp by adding all the hp and dividing by the sum
awk -v outputText='   Avg. HP: ' 'BEGIN{FS="\t"}{if (NR!=1){{hp+=$6}{sum+=1}{meanhp=hp/sum}}}END{print outputText meanhp}' $1
# Outputs avg attack by adding all the attack and dividing by the sum
awk -v outputText='   Avg. Attack: ' 'BEGIN{FS="\t"}{if (NR!=1){{attack+=$7}{sum+=1}{meanattack=attack/sum}}}END{print outputText meanattack}' $1
# Outputs table footer
echo "======= END SUMMARY ======="