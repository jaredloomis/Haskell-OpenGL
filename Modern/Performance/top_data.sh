#! /bin/bash

NAME="$1"
DIR=$(pwd)
OUT_FILE="$DIR/top_data.txt"

PIDS=$(pgrep $NAME)
MYID=$(echo $PIDS | awk '{print $1;}')

echo "PID USER PR NI VIRT RES SHR S %CPU %MEM TIME+ COMMAND" > $OUT_FILE

#CONTINUE=true
#RAW=$(top -n 1 -p $MYID | grep $NAME)

while true
do
    RAW=$(top -n 1 -p $MYID | grep $NAME)

    if [ -z "$RAW" ]; then
        exit 0
    fi

    INFO1=${RAW:7:100}
    INFO="$( cut -d '' -f 1 <<< "$INFO1" )"
    echo $INFO >> $OUT_FILE
done
