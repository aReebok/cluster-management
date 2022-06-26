#!/bin/bash

case $1 in
    start)
	echo starting
	;;
    stop)
	echo stoping
	;;
    restart)
	echo restarting
	;;
    *)
	echo command not found
	;;
esac
