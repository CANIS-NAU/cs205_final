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
# excluding row one, since it's only stating what data is in each column
if (NR!=1)
{
# add up the sum of all pokemons HP, since HP is the 6th row
pokeHP+= $6
# increase the total sum of pokemon each time one's HP is counted
pokeSum+= 1
# divide total HP by total pokemon to recieve average pokemon HP
pokeAvgHP= (pokeHP / pokeSum)
}

# excluding row one once again, same reason as before
if (NR!=1)
{
# add up the sum of all pokemons Atk, since Atk is in the 7th row
pokeAtk+=$7
#divide total Atk by total pokemon to recieve average pokemon Atk
pokeAvgAtk= (pokeAtk/pokeSum)
}
}


END{
# printing first line of report
print " ======= SUMMARY OF POKEMON.DAT ======"
# printing second line of report
print "    Total Pokemon: "pokeSum
# printing third line of report
print "    Avg. HP: "pokeAvgHP
# printing fourth line of report
print "    Avg. Attack: "pokeAvgAtk
# printing fifth line of report
print " ======= END SUMMARY =======          "
}