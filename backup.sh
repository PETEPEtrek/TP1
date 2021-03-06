#!/bin/bash

backup() {
	for elem in $(ls)
	do
		if [[ $elem == *.$exp ]]
		then
			cp $elem $folder
		fi
	done
}

archivation() {
	tar cf $archive $folder
}

path=$1
exp=$2
folder=$3
archive=$4
cd $path
mkdir $folder

backup

archivation

echo "done"
