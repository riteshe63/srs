#!/bin/bash

sh curl-api.sh  > tt.txt
awk '!/200/' tt.txt > tt1.txt
if [ -s ./tt1.txt ]
then
     echo "File Not Empty"
     currentBuild.result = 'ABORTED';
else
     echo "File empty"
fi
