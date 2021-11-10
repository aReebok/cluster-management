#!/bin/bash

#lsblk -o size,name,type | grep -v "part " | > storage2.txt

#cat storage2.txt
count=0

usage=0
diskname=""
storage=0

#while read f;

function disk_found {
    echo " ---- disk found at " $1
}

#while [ $count -le 32 ] && read f;
while read f;
do
    if [ $count -gt 0 ]
    then
#       echo $f
        IFS=' ' read -r -a array <<< $f
        #echo $count "${array[0]}"    # the storage
        #echo $count "${array[1]}"    # the name
        #echo $count "${array[-1]}"   # the type
        if [ "${array[-1]}" = "disk" ]
        then
            # disk detected
            if [ $usage -eq 0 ] && [ "$diskname" = "" ]
            then
                echo "Storage informaiton"

            else
                #echo reached here ln 36
                echo ${diskname} ----------- ${usage} / ${storage}
            fi
            usage=0
            diskname="${array[1]}"
            storage="${array[0]}"
            previous_printed=1
            current_printed=0
        else
            #echo "----RAID1 DETECTED----"
            ((usage=usage+1))
        fi
    fi

    (( count++ ))

done < storage2.txt

echo ${diskname} ----------- ${usage} / ${storage} # prints out the final disk

#rm storage2.txt  # removes the temporary file that was created