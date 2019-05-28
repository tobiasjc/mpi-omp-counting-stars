#!/bin/bash

#for bs in $(seq 100 100 2000); do
#    for pq in $(seq 2 1 4); do
#        echo "now on (${pq}, ${bs})";
#        time mpirun --np ${pq} /home/jose/Dropbox/university/7th/CP/parallel_counting_stars/cmake-build-debug/parallel_counting_stars /home/jose/Dropbox/university/7th/CP/parallel_counting_stars/images/ ${bs} ${bs};
#    done
#done

for bs in $(seq 2000 -100 100); do
	time mpirun --use-hwthread-cpus --np 4 /home/jose/Dropbox/university/7th/CP/parallel_counting_stars/cmake-build-debug/parallel_counting_stars /home/jose/Dropbox/university/7th/CP/parallel_counting_stars/images/ ${bs} ${bs};
done
