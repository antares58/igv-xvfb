#!/bin/bash
cd ${igvScriptDir}
files=$(ls *.igv)
for i in $files ; do
	echo "Snapshot -> ${i}"
	/usr/bin/xvfb-run /igv/IGV_Linux_2.16.0/igv.sh --batch /batchDir/${i}
done
