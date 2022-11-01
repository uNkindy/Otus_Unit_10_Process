#!/bin/bash

for ((i = 1;i<2000000;i++))
do
	echo $i >> /tmp/tempfile_2
done

rm /tmp/tempfile_2
