# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

in_file=$1

main()
{
    # init awk script and use tab as separator
    awk 'BEGIN {FS = "\t"}
    {
        # get file name
        file = ARGV[1]
    }
    
    {
        # if the current line number is not #1
        if ( NR != 1 )
        {
            # sum colums 6 and 7
            hp  += $6;
            att += $7;
        }
    }

    # after iterating through the whole file
    END{
        # average the hp and attack vals using total number of lines
        avg_hp  = hp / FNR - 1;
        avg_att = att / FNR - 1;

        # print output
        printf "\n======= SUMMARY OF %s  ======\n", file
        printf "Total pokemon: %d\n", FNR - 1
        printf "Avg. HP: %d\n", avg_hp
        printf "Avg. Attack: %d\n", avg_att
        printf "======= END SUMMARY ======="
    }' ${in_file}
}

main "$@"
