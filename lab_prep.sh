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
