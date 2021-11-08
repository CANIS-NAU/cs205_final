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

# Section Number: CS205 - 001
# Last Name: Hill
# First Name: Nathan 
# NAU Username: ndh89

BEGIN{ FS="\t"
}
{
sum=0;
hp=0;
atk=0;
startStr=" ======= SUMMARY OF POKEMON.DAT ======";
endStr=" ======= END SUMMARY ======= ";
totalStr="    Total Pokemon: ";
hpStr="    Avg. HP: ";
atkStr="    Avg. Attack: ";
}
if (NR!=1){

# running total of HP
hp+=$6

# running total of attack
atk+=$7

#running total number of pokemon
sum+=1
}
END{
#print starting string
print startStr

#print total
print (totalStr, sum)

#print avg HP
print (hpStr, (hp/sum))

#print avg attack
print (atkStr, (atk/sum))

#print end message
print endStr
}
