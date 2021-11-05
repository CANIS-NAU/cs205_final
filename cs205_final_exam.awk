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
BEGIN{FS="\t"}
{
if (NR!=1){
#HP and Atk locations in the file. This registers what each line what needs to be look for when these are called.
hp=$6
atk=$7

#Formulas in which the program would calculate the total of hp and atk before division
totalHP+=hp
totalATK+=atk

#counts the total number of lines that the file contains
count+=1
}
#Calculation of average HP and average Atk based on the number of pokemon that currently exists
averageHP=totalHP/count
averageATK=totalATK/count

}
END{
#Print statements that display the graph and information requested once shell script has been executed.
print "======= SUMMARY OF POKEMON.DAT ======"
print "    Total Pokemon: "count
print "    Avg. HP: "averageHP
print "    Avg. Attack: "averageATK
print "======= END SUMMARY ======="
}
