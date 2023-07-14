#!/bin/bash
names=( $@ )
for iName in "${names[@]}"
do
	if [ -f "${iName}" ]
	then
		bName="$(basename ${iName} .pdf)"
		outName=${bName}"_repair.pdf"
		gs -o ${outName} -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -dCompatibilityLevel=1.5 ${iName}
	else
		echo "${iName} does not exit"
	fi
done
