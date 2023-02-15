#!/bin/bash
cd ${igvScriptDir}
set +o noglob
for i in *.igv ; do
	echo "Snapshot -> ${i}"
#	/usr/bin/xvfb-run /igv/IGV_Linux_2.16.0/igv.sh --batch /batchDir/${i}
done
