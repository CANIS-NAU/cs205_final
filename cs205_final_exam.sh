# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: 800
#    Avg. HP: 69.2588
#    Avg. Attack: 79.0012
# ======= END SUMMARY =======


BEGIN{FS="\t"} 
  { 
   if (NR != 1){ 
   hp += $6 

   num += 1 

   attack += $7 
   } 
  } 
  m1=hp/num
m2=attack/num

END {
print "Total Pokemon: "num
print "Avg. HP: "m1
print "Avh. Attack: "m2
}


# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.
