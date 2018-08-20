# Linux系统信息

## uptime

打印系统运行时长和平均负荷

语法：

uptime[phsV]

## who

显示当前登录系统的用户信息

语法：

who [option] <file | arg1 arg2>

选项：

-H:显示各栏的标题信息列

-u:显示空置时间

-q:只显示登入系统的用户名称和总人数

## last

显示用户最近登录信息

语法：

last [fnx] <username...> <tty...>

选项：

-f:"file":制定记录文件

-n:"num":制定输出记录数

-x:显示系统关机，重新关机等信息

## date

显示或设置系统时间与日期

语法：

date [dsu] <参数>

选项：

-d:"string":显示字符串所指的时期

-s:"string":设置时间

-u:显示GMT（如果有CST的情况下）

参数：

<+日期格式>:显示使用的日期格式

## w

当前登录用户列表及正在执行的任务

语法：

w [husfV] <user> <...> 

options:

h:不打印头文件

s:使用短输出格式

f:切换显示FROM项，默认显示

wall "string"

广播给所有人string

## whoami

打印当前有效的用户名称

语法：

whoami有效用户

who am i 真实用户

## uname

打印当前系统信息

语法：

uname [options]

参数:

-a:全部信息

-m:电脑类型

-n:网络上主机的名称

-v:os版本

-p:处理器类型

-i:硬件平台

-o:操作系统名称

## cal

显示日历

cal [选项] <参数>

选项

-1, -3: 显示最近一个月和三个月的日历

-j:显示一年的第几天

-y显示当前年

参数

月：指定月份

年：指定年份