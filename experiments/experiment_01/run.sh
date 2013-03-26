#!/bin/bash

for scenario in `ls ./scenarios`; do
	mkdir ./results/$scenario
	for i in `seq 1 30`; do
		java -jar beefs-energy-simulation-ef73ba2.jar ./scenarios/$scenario > ./results/$scenario/result_$i  2> ./results/$scenario/error_$i.log 
	done
done
