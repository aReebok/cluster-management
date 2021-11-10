#!/bin/bash
# Purpose: Read Comma Separated CSV File
# Author: Vivek Gite under GPL v2.0+
# ------------------------------------------

INPUT=ipallo.csv
OLDIFS=$IFS
IFS=','

[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

while read type network vlan_id host mac_ad ip_ad ip_current okay ansiblized current_os os_version notes
do
    set -o noclobber
    echo "$host,$ip_ad" >> testfile.csv 
    
done < $INPUT
IFS=$OLDIFS
