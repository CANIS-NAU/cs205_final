# TODO: Modify this file to create a shell script that is able to use awk to go
# through a file formatted like pokemon.dat and provides a printed report in
# the following format (where your script correctly calculates the values that
# go into the [VALUE] placeholders):

# initialize variables
double countNames
double countHP
double total
double avgHP
double avgAttack

# increment counter for each name in file to find line count
function countlines(sumTotal){
        # Increment countNames by 1
        countNames++
        }
# run countlines to find total number of lines
{countlines($0)}

# Calculate mean given column as a parameter
function mean(column){
        # Increment countMean variable by 1
        countMean++
        # add column value to total to find sum total of all values
        total=total+column
        }

# ===== SUMMARY OF DATA FILE =====
#    File name: [VALUE]
# Display file name
{print "File name: " FILENAME }
#    Total Pokemon: [VALUE]
# Display total count of pokemon
{print "Total Pokemon: " countNames }
#    Avg. HP: [VALUE]
# Display Average HP of all pokemon
{avgHP=mean($5)}
{print "Avg. HP: " total/countMean }
#    Avg. Attack: [VALUE]
# Display Average Attack of all pokemon
{avgAttack=mean($6)}
{print "Avg. Attack: " total/countMean}
# ===== END SUMMARY =====

# The "Avg." values should be calculated as mean values for the corresponding
# columns.
# The spacing and header formatting should match the above formatting
# description exactly.
# There should be a comment explaining the purpose of each line in your shell
# script.
# The data file will be passed in to the script as a positional parameter and
# will not necessarily be called pokemon.dat. However, you can assume that any
# file passed to this script will be formatted exactly the way pokemon.dat is
# formatted.
