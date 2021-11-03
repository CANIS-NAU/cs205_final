# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted


#Part 1: Finding the total amount of pokemon (which is equal to the number of rows minus 1)
END{
        {Number_of_Pokemon = NR - 1} }

#part 2: Finding the average HP (HP is column 6)
BEGIN{
	{Sum_of_HP=0} }; {Sum_of_HP=Sum_of_HP + $6}
END{
	{Average_HP = Sum_of_HP/Number_of_Pokemon} }

#Part 3: Finding the average Attack (Attack is column 7)
BEGIN{
	{Sum_of_Attack=0} }; {Sum_of_Attack=Sum_of_Attack + $7}
END{
	{Average_Attack = Sum_of_Attack/Number_of_Pokemon} }

#Part 4: Displaying the summary
END{
	{print"====== SUMMARY OF POKEMON.DAT ======"};
	{print"   Total Pokemon: " Number_of_Pokemon};
	{print"   Avg. HP: " Average_HP};
	{print"   Avg. Attack: " Average_Attack};
	{print"======= END SUMMARY ======="} }
