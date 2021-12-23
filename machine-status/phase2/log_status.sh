#!/bin/bash

curr_date=$( date | cut -d " " -f 2-3 | date -d "$1" +%F )
a_week_ago=$( date -d "${curr_date} - 7 day" +%F )


i=${curr_date}

