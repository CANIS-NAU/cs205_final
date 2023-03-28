#!/bin/bash

# This script takes a file formatted like pokemon.dat as input and calculates summary statistics using awk.


# Get the filename from the first positional parameter

FILE=$1


# Use awk to calculate the total number of Pokemon and store it in a variable

total=$(awk 'END {print NR}' /home/grant/cs205/cs205_final/pokemon.dat)

# Use awk to calculate the average HP and store it in a variable

avg_hp=$(awk '{sum += $4} END {print sum / NR}' /home/grant/cs205/cs205_final/pokemon.dat)

# Use awk to calculate the average Attack and store it in a variable

avg_attack=$(awk '{sum += $5} END {print sum / NR}' /home/grant/cs205/cs205_final/pokemon.dat)

# Print the summary report

echo "======= SUMMARY OF POKEMON.DAT ======="
echo " Total Pokemon: $total"
echo " Avg. HP: $avg_hp"
echo " Avg. Attack: $avg_attack"
echo "======= END SUMMARY ======="
