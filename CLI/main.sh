#!/usr/bin/env bash

#build a function to remove empty lines from a csv file
remove_empty_lines() {
    #remove empty lines from the csv file
    sed -i '/^$/d' $1
}

#build a function to calculate the difference between two columns
calculate_difference() {
    #calculate the difference between the two columns
    awk -F, '{print $1 - $2}' $1
}