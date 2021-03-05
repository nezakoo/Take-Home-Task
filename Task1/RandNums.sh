#!/bin/bash
################################
### created by Oleksii Shylo ###
################################
var1=$1
### check if there is no arguments -- set default limit number 1
if [ -z "$var1" ]; then
    var1=10
fi
### creating the list of numbers
NumList=($(seq 1 1 "$var1"))
### set array of used numbers as empty
UsedNums=()
### loop for output our random numbers
while [ ${#UsedNums[@]} -lt ${#NumList[@]} ]; do
    ### getting random number from our list
    RandNum=${NumList[RANDOM%$var1]}
    ### uniqueness check
    if [[ ! " ${UsedNums[@]} " =~ " ${RandNum} " ]]; then
        echo "$RandNum"
        ### adding used number to an array
        UsedNums+=("$RandNum")
    fi
done
