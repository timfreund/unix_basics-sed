#!/usr/bin/env bash

if [ ! -d ./lab ]
then
    echo "Creating ./lab"
    mkdir ./lab
fi

cp .sudoers ./lab/sudoers

if [ ! -f ./lab/tom_sawyer.txt ]
then
    echo "Downloading tom_sawyer.txt"
    curl -s -o ./lab/tom_sawyer.txt https://www.gutenberg.org/files/74/74-0.txt
fi

if [ ! -f ./lab/MERGED2013_14_PP.csv.gz ]
then
    echo "Downloading MERGED2013_14_PP.csv.gz"
    curl -s -o ./lab/MERGED2013_14_PP.csv.gz https://codemuxer.com/files/unix_basics/sed/MERGED2013_14_PP.csv.gz
fi
