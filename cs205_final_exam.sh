#! /bin/sh

echo 'Enter file name'
read varname

awk '
BEGIN{FS="\t"}
{
if (NR!=1){
sum+=$6
defense+=$8

if($13 = "False")
false = false + 1


}

}

END{

#Prints Total Non-legendary Pokemon
print "Total Non-Legendary Pokemon: " false

#Prints avg hp
# it is minus 1 because one line is a category line (total of 800 pokemon)
print "Avg. HP: " sum / (NR - 1)

#Prints avg defense
print "Avg. Defense : " defense / (NR - 1)
}

'
$varname