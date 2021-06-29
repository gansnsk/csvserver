#!/bin/bash
touch inputFile
for i in `seq 10`;
do
    RANDOM=`expr $$ / $i`
	echo "$i , $RANDOM " >> inputFile
done
