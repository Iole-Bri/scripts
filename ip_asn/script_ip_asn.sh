#!/bin/bash
# Script IP -> ASN

for line in $(cat ip.txt); 
do 
    curl https://ipinfo.io/$line -s >> result.json; 
done
cat result.json | jq .ip,.org -r
