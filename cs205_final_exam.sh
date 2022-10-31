#!/bin/awk -f

#TODO: Create a shell script that is able to use regular expressions and awk to goes through the file pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# find the total pokemon by counting the total lines
END{print "Total Pokemon: " FNR}
{Total += $6} {Mean = Total/FNR} END{print "Avg. HP: " Mean}
{Totals += $7} {Means = Totals/FNR} END{print "Avg. Attack: " Means}




# ====== SUMMARY OF POKEMON>DAT =====
#       Total Pokemon: [VALUE]
#       Avg. HP: [VALUE]
#       Avg. ATtack: [VALUE]

#The "Avg." values should be calculated as mean values for the corresponding columns.
# The psacing and header formatting should match the abpve formatting description exactly.

