#!/bin/bash
a=0
b=0
find() {
    for i in `ls -a $1`; do
        if [[ ! -r "$i" ]]; then
            continue
        fi
        if [[ $i == '.' || $i == '..' ]]; then
            continue
        else
            if [[ -f "$i"  ]]; then
                (( b++ ))
            fi
            if [[ -d "$i" ]]; then
                cd
                (( a++ ));
                find;
                cd ..
            fi
        fi
    done
}

cd $1
find
echo "文件夹个数为$a"
echo "文件个数为$b"
