#!/bin/awk

# I absolutely hated this class and it got in the way of so many other things I wish I had time to do.
# Also congratulations on making me hate the Linux OS, again.

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

BEGIN { FS = "\t" }
{
  # Check if reading format declaration line
  if ( NR != 1 )
  {
    # Get and add this pokemon's hp
    totalHP += $6

    # Get and add this pokemon's attack
    totalAtk += $7

    # Indicate this is another pokemon in the total
    totalPokemon += 1
  }
}

END{
  # Indicate start of summary
  print "======= SUMMARY OF POKEMON.DAT ======="

  # Indicate total pokemon
  print "   Total Pokemon: " totalPokemon

  # Indicate average hp and show
  print "   Avg. HP: " totalHP / totalPokemon

  # Indicate average attack and show
  print "   Avg. Attack: " totalAtk / totalPokemon

  # Indicate end of summay
  print "====== END SUMMARY ======"
}
