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

#Use the command "awk -f cs205_final_exam.awk pokemon.dat" to see that my awk program work. I also provided a screenshot

