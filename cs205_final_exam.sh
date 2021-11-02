# 001
# Herrer Torres
# Javier
# jh3549

#!/bin/bash

awk '
    # Change the file separator to tabs
    BEGIN {
        FS="\t"
    }

    # Store the sum of HP and Attack columns
    NR > 1 {
        sumHP += $6;
        sumAttack += $7;
    }

    # Compute the num of pokemon and the avg
    END {
        print "======= SUMMARY OF POKEMON.DAT ======";
        print "   Total Pokemon: ", NR-1;
        print "   Average HP:", sumHP/(NR-1);
        print "   Avg. Attack:", sumAttack/(NR-1);
        print "======= END SUMMARY =======";
    }

' $1
