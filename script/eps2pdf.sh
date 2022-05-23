#!/bin/bash
names=( $@ )
for iName in "${names[@]}"
do
	if [ -f "${iName}" ]
	then
		echo ${iName}

		epstopdf ${iName}
	else
		echo "${iName} does not exit"
	fi
done
