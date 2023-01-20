#!/bin/sh
# uname -snrvm

# see http://0pointer.de/blog/projects/os-release and https://www.freedesktop.org/software/systemd/man/os-release.html
test -e /etc/os-release && os_release='/etc/os-release' || os_release='/usr/lib/os-release'
. "${os_release}"

PRETTY_COLOR='\033[0;32m'
HOST_NAME=$(hostname)
HOST_COLOR='\033[1;33m'
KERNEL_NAME=$(uname -srm)
KERNEL_COLOR='\033[1;31m'
k='\033[0m'

echo $PRETTY_COLOR$PRETTY_NAME$k - $HOST_COLOR$HOST_NAME$k - $KERNEL_COLOR$KERNEL_NAME$k
