#!/bin/bash
maxstring=0
line=0
string=0
find() {
    for i in  `ls`; do
        if [[ -f "$i" ]]; then
            for j in `strings "$i"`; do
                max=0
                max=${#j}
                if [[ max -gt maxstring ]]; then
                    maxstring=$max
                    line=`pwd`
                    string=$j
                fi
            done
        fi
        if [[ -d "$i" ]]; then
            find;
            cd ..
        fi;
    done
}
cd $1
find;
echo "最长字符串为$string"
echo "最长字符串长度为$maxstring"
echo "路径为$line"
