#!/bin/bash
pids=$(ps -ef | grep "proxy_server" | grep -v "grep" | awk '{print $2}')
for pid in ${pids}
do
    echo "kill server pid" $pid
    kill $pid
done