# # Swingle
# # Connor
# # css354
BEGIN{FS="\t"}{
if (NR!=1){
# #TODO change HP to add up the number of HP on the Pokemon listed
hp+=$6
# # add up attack values
at+=$7
# #Counts the number of lines in the file
sum+=1
}

}
END{
# # calculate average HP and Attack
average=hp/sum
avgAt=at/sum
# # print all values
print "Total Pokemon: " sum
print "Avg. HP: " average
print "Avg. Attack: " avgAt
}
