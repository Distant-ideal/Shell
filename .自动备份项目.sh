#!/bin/bash
read i
i=${i//://}
log='recording'
time_now=`date +"%Y-%m-%d %H:%M"`
time_file=`date +"%Y%m%d%H%M"`

if [[ ! -d $i ]]; then
    echo -e "$time_now 【ERROR】The Dest dir $dest_dir not exists" >> $log
    exit
fi

echo "$time_now backup started!" >> $log

for i in $i; do
    if [[ ! -d $i ]]; then
        echo "%time_now backup 【ERROR】 The dir $i not exist" >> $log
    fi
    echo "$i started"
    target=`echo $i | cut -d "/" -f 2- | tr "/" "_"`
    target=${target}_${time_file}
    tar -czPf ~/store/${target}.tar.gz $i
    size=`du -h $i`
    if [[ $? -eq 0 ]]; then
        echo "time_now backup $i --> $target + ${size}M" >> $log
    else
        echo  "time_now 【ERROR】Something .... " >> $log
    fi
done

Del_list=`find ~/store -name *.tar.gz -mtime +3`

for i in $Del_list; do
    rm -f $i
    echo "time_now delete $i --> remove -${size}M"
done
