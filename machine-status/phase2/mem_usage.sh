#!/bin/bash

function mem_usage () {
    # output: mem_usage: out of Xgb, in use ~Y%
    total_mem=$(free -th | grep "Total" | awk '{print $2}' | numfmt --from=iec)
    #total_mem_n=$(echo ${total_mem} |  #sed 's/[^0-9]*//g')
    used_mem=$(free -th | grep "Total" | awk '{print $3}' | numfmt --from=iec)
#used_mem_n=$(echo ${used_mem} | sed 's/[^0-9]*//g')

    #echo $total_mem / $used_mem
    percent_mem=$( echo "${used_mem} * 100 / ${total_mem}" | bc | numfmt --to=iec)
    echo $percent_mem

echo -n "Memory usage: Out of $(echo "${total_mem}" | numfmt --to=iec), in use ~ ${percent_mem} "
}

 mem_usage
