#!/bin/bash -x

for imageExt in jpg png; do
	echo "Converting $imageExt images to pdf"
	for i in *.${imageExt} ; do convert $i "${i%.*}".pdf ; done  
done
