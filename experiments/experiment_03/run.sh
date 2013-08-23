#!/bin/bash

for scenario in `ls ./scenarios`; do
  mkdir ./results/$scenario
  for i in `seq 1 30`; do
    error_file=./results/$scenario/error_$i.log
    java -jar $1 ./scenarios/$scenario > ./results/$scenario/result_$i  2> $error_file
    grep -v "already ahead of" ./result/$scenarios/error_$i.log > temp_error
    mv temp_error $error_file
  done
done
