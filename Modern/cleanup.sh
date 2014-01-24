#! /bin/bash

DIRECTORY=$(dirname $0)

find $DIRECTORY -maxdepth 5 -type f -name "*.o" -delete
find $DIRECTORY -maxdepth 5 -type f -name "*.hi" -delete
