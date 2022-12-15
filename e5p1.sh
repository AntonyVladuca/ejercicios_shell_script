#!/bin/bash
#Script que imprime 5,4,3,2,1 usando while

nums=5

while [[ $nums -ge 1 ]];
	do
		echo $nums
		((nums--))
	done
