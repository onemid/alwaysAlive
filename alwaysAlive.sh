#!/bin/bash
# Program: Check the target process whether is alive, or restart again.

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

for target in "$@"
do

echo "We are now checking ${target} service status"

log=/dev/shm/servic_${target}_check.txt
service ${target} status>${log}
testlog=$(grep "Active: active" ${log})
if [ "${testlog}" != "" ]; then
    echo "${target} Service is working"
else
    echo "We detect the service down, now restarting ${target}"
    systemctl restart ${target}
fi

echo "-------------------------------"

done

echo "FINISHED THE CHECK ROUTINE"
