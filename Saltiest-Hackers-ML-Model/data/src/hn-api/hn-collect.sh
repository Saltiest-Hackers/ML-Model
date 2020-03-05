#!/bin/bash
# run this script second to create the data folder
cd ..\.. \
&& mkdir -p raw\hn-api-jsons-full \
&& mv src\hn-api.txt raw\hn-api.txt \
&& cd raw\hn-api.txt \
&& cat hn-uri.txt | xargs -P 100 -n 100 wget --quiet \
&& echo data retrieval complete!