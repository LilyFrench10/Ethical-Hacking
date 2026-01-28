#!/bin/bash



echo "" > lookup.txt
for i in {2..255}; do
       IP="${1}.${i}"
        nslookup "$IP" "$2" 2>/dev/null >>lookup.txt

done
cat lookup.txt | grep "name ="
