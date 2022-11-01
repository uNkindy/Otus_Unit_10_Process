#!/bin/bash

for ((i = 1;i<2000000;i++))
do
	echo $i >> /tmp/tempfile_1
done

rm /tmp/tempfile_1
