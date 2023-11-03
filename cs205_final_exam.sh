#!/bin/bash
 
pokemon.dat=$1

total='wc -l < $pokemon.dat'

avghp='awk -F' ' '{sum+=$4;} END {print sum;}' $pokemon.dat'

avgatk='awk -F' ' '{sum+=$5;} END{print sum;}' $pokemon.dat'

printf "====Summary of pokemon.dat=====\n"
printf "Total Pokemon:$total\n"
printf "Avg.HP: $avghp|n"
printf "Avg. Attack: $avgatk\n"
printf "=====End summary=====\n"

