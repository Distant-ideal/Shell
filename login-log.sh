#!/bin/bash
放入.bashrc中
l=`who am i`
echo $l >> ~/shell/recording
放入.bash_logout中
k=`w -h | awk '{print "$3" "$4"}'`;
echo "w - h | awk '{print $2}'"
start=`date +%s -d "$k"` 
end=`date +%s`
s= $[$end-$start]
echo "总登录时长为:$s s" >>~/shell/recording
