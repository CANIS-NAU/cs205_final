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


awk -v filename=$1 '
BEGIN { FS="\t" }

{
	if (NR!=1) {
		pokemoncount += 1
		totalhp += $6
		totalattack += $7
	}
}

END {
	printf "======= SUMMARY OF %s =======\n", filename
	printf "   Total Pokemon: %d\n", pokemoncount
	printf "   Avg. HP: %d\n", totalhp/pokemoncount
	printf "   Avg. Attack: %d\n", totalattack/pokemoncount
	print "======= END SUMMARY =======\n"
}

' $1

# Code Explanation (#s are lines)
# 14 -> Call awk with given argument (filename)
# 15 -> Declare \t as delimeter for input file
# 18 -> For each line in file...
# 19 through 21 -> Add to sum for pokemon count, total hp, and totalattack
# 26 through 30 -> Display summary of input file
# 33 -> Call awk with $1, which is the input filename
