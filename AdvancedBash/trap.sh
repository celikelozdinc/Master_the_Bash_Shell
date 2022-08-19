#!/bin/bash
#trap "echo SIGSTOP is trapped" 9 20 15
trap "echo SIGINT, SIGSTSTP or SIGTERM is trapped ; echo exiting ; exit 1" SIGINT SIGTSTP SIGTERM
echo "You can send signals by executing below commands: "
echo "kill -2 ""${BASHPID}"
echo "kill -20 ""${BASHPID}"
echo "kill -15 ""${BASHPID}"
while true
do
    echo -n "."
    sleep 1
done
# Open a new terminal, send these signals:
# kill -2 <PID>
# kill -20 <PID>
# kill -15 <PID>