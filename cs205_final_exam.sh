
# Section Number: CS205 - 001
# Last Name: Hill
# First Name: Nathan 
# NAU Username: ndh89

BEGIN{FS="\t"
}
{
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
