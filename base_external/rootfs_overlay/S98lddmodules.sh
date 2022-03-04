#!/bin/sh

case "$1" in 
	start)
		echo 'Starting scull and misc-modules'
		modprobe hello
		/usr/bin/module_load faulty
		/usr/bin/scull_load
		;;
	stop)
		echo 'Stopping scull and misc-modules'
		rmmod hello
		/usr/bin/module_unload faulty
		/usr/bin/scull_unload
		;;
	*)
	echo "Usage: $0 {start|stop} - to load and unload kernel modules"
	exit 1
esac

exit 0
