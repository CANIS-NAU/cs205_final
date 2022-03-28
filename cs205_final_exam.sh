#!/bin/awk -f
#I really tried on this one, I don't know what I am doing wrong
#if you could text me a video explaining my stupidity that would be appriciated (707)548-7171

filename=$1
if [ -f "$filename" ]; then
echo "File exists"
else
echo "File does not exist"
fi

total=0
HP=0
SD=0

awk 'BEGIN{
        if(${14}=="False")
        total = total+1
        fi
        HP+=$7
        SD+=$9
        }'





echo"======= SUMMARY OF POKEMON.DAT ======"
echo"    Total Non-Legendary Pokemon:" $total
echo"    Avg. HP: "$HP
echo"    Avg. Defense: "$AD
