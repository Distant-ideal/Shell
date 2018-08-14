#!/bin/bash

if [[ ! -d trash ]];then #判断是否存在垃圾桶
	mkdir trash #如果不存在垃圾桶文件则生成一个垃圾桶文件
fi
 
if [[ $# == 0 ]]; then #判断是否传入参数
    echo "替换rm安全删除文件"
elif [[ $1 = "-r" ]] && [[ $2 = "-f" ]]; then
	echo "你即将删除此文件夹下的所有文件"
	echo -n "是否确定执行? [y/n]:"
	read ture
	if [[ "$ture" == "y" ]] || [[ "$ture" == "Y" ]]; then
    for i in `ls`; do
        if [[ -f "$i" ]] || [[ -d "file" ]]; then
            mv -b "$i" trash
            echo "删除成功"
        else
			echo "无此文件"
        fi
    done
    else
		echo "取消删除"
    fi
elif [[ $1 = "-f"  ]]; then
    for i in "$@"; do
        if [[ $i != "-f" ]]; then
	        echo "你即将删除这些文件:$i"
        fi
    done
	echo -n "是否确定执行? [y/n]:"
	read ture
	if [[ "$ture" == "y" ]] || [[ "$ture" == "Y" ]]; then
    for file in "$@"; do
        if [[ $file != "-f" ]]; then
            if [[ -f "$file" ]] || [[ -d "file" ]]; then
                mv -b "$file" trash
                echo "删除成功"
            else
			    echo "无此文件"
		    fi
        fi
    done
    else
		echo "取消删除"
    fi
else
	echo "你即将删除这些文件: $@"
	echo -n "是否确定执行? [y/n]:"
	read ture
	if [[ "$ture" == "y" ]] || [[ "$ture" == "Y" ]]; then
		for file in "$@"; do
			if [[ -f "$file" ]] || [[ -d "$file" ]]; then
				mv -b "$file" trash #将目标文件移动到垃圾桶文件
                echo "成功删除"
            else
				echo "无此文件"
			fi
		done
    else
		echo "取消删除"
	fi
fi
