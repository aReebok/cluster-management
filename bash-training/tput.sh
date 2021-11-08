#!/bin/bash
# Print message in center of terminal
cols=$( tput cols ) # finds the number of columns
rows=$( tput lines ) # finds the number of lines (rows)
message=$@ # message is equal to the whole argument string, not tokenized
input_length=${#message} # finds the length of message using '#'
half_input_length=$(( $input_length / 2 )) # calculates half of the characters in the input using the double parentheses method of arithmetic expressions
middle_row=$(( $rows / 2 )) # finds the middle row
middle_col=$(( ($cols / 2) - $half_input_length )) #find the middle column offset by how long the input it
tput clear # clear the text to get ready for output
tput cup $middle_row $middle_col # set the cursor at the middle row and offset column
tput bold # bold formatting for the text
echo $@ # Time to print the text
tput sgr0 # Reset formatting to defaults
tput cup $( tput lines ) 0 # put the cursor at the bottom of the screen
