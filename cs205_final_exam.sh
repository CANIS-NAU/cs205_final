#!/bin/bash

# get data and parse
   # take positional argument and store in separate variable for readability
fileName=$1

   # pull count of all records in file (totalPokemon)
totalPokemon=$(awk 'END {print NR}' $fileName)

   # pull data from column 6 (avg hp) and then divide by count of all records
avgHP=$(awk '{avgHP += $6} END {print avgHP / NR-1}' $fileName)

   # pull data from column 6 (avg attack) and then divide by count of all records
avgAttack=$(awk '{avgAttack += $7} END {print avgAttack / NR-1}' $fileName)

# print results
echo ""
echo " ===== SUMMARY OF DATA FILE ====="

echo "    File name: $fileName"
echo "    Total Pokemon: $totalPokemon"
echo "    Avg. HP: $avgHP"
echo "    Avg. Attack: $avgAttack"
echo " ===== END SUMMARY ====="
echo ""
