# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Defense: [VALUE]
# ======= END SUMMARY =======

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.

#Josue Salcedo
#jas2525
#CS205
#This section will print out the top comment
BEGIN{}
{}
END{print "#======== SUMMARY OF POKEMON.DAT} ======"}
#This is where we will get the Non_legendary count by adding one everytime we get a "TRUE"
BEGIN{count=0}
{if($12 == "TRUE") count+=1}
END{print "Total of Non-Legendary Pokemon: " count}
# THE next two is where there will be a the print of Avg Hp and defense
BEGIN{sumhp=0}
{sumhp += $6
avghp = sumhp}
END{ print "# Avg. HP: " sumhp/NR}

BEGIN{sumdef=0}
{sumdef += $8
avgdef = sumdef}
END{ print "# Avg. Defense: " sumdef/NR}

BEGIN{}
{}
END{print "#======= END OF SUMMARY ======="}