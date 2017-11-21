#####
# File Name: readline.sh
# Author: alen6516
# Created Time: 2017-11-22
#####
#!/bin/bash

file=$1

exec < $file

while read line && [[ -n $line ]]; do
    # the last line is empty, so use -n to check in previous
    # but this will make the loop stop once encounter a empty line
    echo $line
done
