#!/usr/bin/env bash

# build a function to caculate levenstein distance
function levenshtein() {
    local s=$1 t=$2
    local ls=${#s} lt=${#t}
    local i j d

    for ((i=0; i<=ls; i++)); do
        d[i,0]=$i
    done
    for ((j=0; j<=lt; j++)); do
        d[0,j]=$j
    done

    for ((i=1; i<=ls; i++)); do
        for ((j=1; j<=lt; j++)); do
            if [ ${s:i-1:1} = ${t:j-1:1} ]; then
                d[i,j]=${d[i-1,j-1]}
            else
                d[i,j]=$(( $(echo -e "${d[i-1,j-1]}\\n${d[i-1,j]}\\n${d[i,j-1]}" | sort -n | head -1) + 1 ))
            fi
        done
    done

    echo ${d[ls,lt]}
}

levenshtein $1 $2