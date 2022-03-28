#!/bin/awk -f

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
