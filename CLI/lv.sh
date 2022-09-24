#!/usr/bin/env bash

#build function to calculate levenshtein distance
function levenshtein {
    if [ "$#" -ne 2 ]; then
        echo "Usage: levenshtein string1 string2" >&2
        return 1
    fi

    local str1len=$((${#1} + 1))
    local str2len=$((${#2} + 1))
    local d i j

    for i in $(seq $str1len); do
        d[$i,0]=$i
    done
    for j in $(seq $str2len); do
        d[0,$j]=$j
    done

    for j in $(seq 1 $((str2len - 1))); do
        for i in $(seq 1 $((str1len - 1))); do
            [ ${1:i-1:1} = ${2:j-1:1} ] && local cost=0 || local cost=1

            local del=$((d[i-1,j] + 1))
            local ins=$((d[i,j-1] + 1))
            local alt=$((d[i-1,j-1] + cost))
            d[$i,$j]=$(echo -e "$del

repeat $1 $2