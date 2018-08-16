# SHELL

## 1.变量定义

a=12

a=helleword

a=`pwd`

a=$a:a

局部变量：local a=12

## 2.位置变量

$0:获取当前执行shell脚本的文件名,包括路径。

$n:获取当前脚本的第n个参数，n=1...9，如果n大于9，则需要将n使用大括号括起来。

#### $*:获取当前shell的所有参数，将所有命令行参数视为单个字符串，相当于“$1,$2,$3”

$#:得到执行当前脚本的参数个数

$@：获取这个程序所有参数，并保留参数之间的任何空白，相当于“$1”"$2""$3"

## 3.特殊变量

$?:判断上一直令是否成功执行

$$:取当前进程的

$!:上一个指令的

## 4.输入

### read

-a array 把输入赋值到数组array中，从索引号零开始

-d delimiter 用字符串delimiter中的第一个字符指示输入结束，而不是一个换行符

-e 使用Readlinc来处理驶入。这使得与命令行相同的方式编辑输入

-n num 读取num个输入字符而不是整行

-p prompt 未输入显示提示信息，使用字符串prompt

-r Raw mode 不把反斜杠字符解释为转义字符

-s Silent mode

-t seconds 超时

-u fd 使用文件描述符fd中的输入，而不是标准输入

## 5.输出

### echo

echo -e “Hello\n” 开启转义

echo“hellow”

## 6.函数

```sh
function _printf_ {
    echo $1
    return
}

_printf_() {
    echo $1
    return
}
function _printf_() {
    echo $1
    return
}
```

## 7.流程控制

### -if

```sh
if [[ condition ]]; then
	#statements
fi

if [[ condition ]]; then
	#statements
else
	#statements
fi

if [[ condition ]]; then
	#statements
elif [[ condition ]]; then
	#statements
fi
```

### -while

```sh
while [[ condition ]]; do
	#statements
done
```

### -until 用法与while相同

### -case

```sh
case word in
	pattern ）
		;;
esac
```

## 8.数组

declare -a a

name[subscript]=vale

name=(value1 value2..)

### 数组操作

输入数组内容

${arry[*]}

${arry[@]}

确定数组元素个数

${#arry[@]}

找到数组的下标

${!atty[@]}

数组追加

arry+={a b c}

数组排序

sort

删除数组与元素

unset

