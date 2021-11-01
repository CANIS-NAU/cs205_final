#!/usr/bin/awk -f
printf "======= SUMMARY OF POKEMON.DAT =======";
printf "\n";
printf "\tTotal Pokemon: ";
awk 'BEGIN{c1=0} //{c1++} END{print c1}' pokemon.dat;
printf "\tAvg. HP: ";
awk '{sum += $5; c1++} END{if (c1 > 0) print sum / c1;}' pokemon.dat;
printf "\tAvg. Attack: ";
