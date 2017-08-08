#!/bin/bash
BUILDARCH=$(dpkg --print-architecture)
case "$BUILDARCH" in
amd64)
	dpkg --add-architecture i386
	apt-get update
yes |	apt-get install libc:i386
	;;
i386)
	;;
*)
	echo "Unknown target architecture: ${BUILDARCH}"
	exit 1
	;;
esac
yes | apt-get install build-essential
