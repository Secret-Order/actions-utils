#!/bin/bash

echo $1
regex="^(?:(added project by )(\w+)( to Year )([1-4])( Semester )([1-2]))(?(1)\n?|)(?(?<=\n).*|)$"
if [[ $1 =~ $regex ]];
then
    echo "Commit message check passed"
    exit 0
else
    echo "Commit message check failed"
    echo "Please follow the guidelines in README.md"
    exit 1
fi
