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

# Section Number
# 001
# Last Name
# Nannen
# First Name
# Noah
# NAU Username
# ncn23

# start the file and introduce awk elements
#!/bin/bash
BEGIN{FS="\t"}
{

#initialize new variables
lSum=0
hpSum=0
defSum=0
lines=0

# start running through the file
if (NR!=1){

# check if the pokemon is legendary
if [ awk '$12 == True'  ]; then
  # add to the legendary sum
	lSum+=1
  
# otherwise
else
  # calculate total hp
  hpSum=hpSum+'$6'
  # calculate total defense
  defSum=defSum+'$8'

# count the number of lines
lines=lines+1

# determine the averages
hpAve=hpSum/ave
defAve=defSum/ave
}
}
END{
# display the summary
print "======= SUMMARY OF POKEMON.DAT ======"
print "    Total Non-Legendary Pokemon: $lSum"
print "    Avg. HP: $hpAve"
print "    Avg. Defense: $defAve"
print " ======= END SUMMARY ======="
}
