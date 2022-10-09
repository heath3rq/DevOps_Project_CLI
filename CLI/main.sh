#!/usr/bin/env bash

#build a function to remove empty lines from a csv file
remove_empty_lines() {
    #take in the file name and two column numbers - REQUIRED FIELDS
    FILENAME=$1
    col1=$2
    col2=$3
   
    #remove empty lines from the csv file
    sed '/^[\s,]*$/d' $FILENAME | awk '{print NR, $0}' > data_cleaned.csv
   
    #further filter the data to only include rows where WageMin	and WageMax columns are different
    awk -F"," 'NR==1 || ($ '$col1' - $ '$col2' != 0) {print}' data_cleaned.csv > data_filtered.csv
    
    ##Alternative way to do the above if you just want the filtered data
    ## sed '/^[\s,]*$/d' $FILENAME | awk 'BEGIN{FS=OFS=","}{if ($'$col1' - $'$col2' != 0) print NR, $0}' > data_final.csv
}

remove_empty_lines $1 $2 $3