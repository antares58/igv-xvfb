#!/bin/bash
cd ${igvScriptDir}
for i in *.igv ; do
	echo "Snapshot -> ${i}"
	/usr/bin/xvfb-run /igv/IGV_Linux_2.16.0/igv.sh --batch ${i}
done
