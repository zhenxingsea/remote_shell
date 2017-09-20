# remote_shell
批量远程执行linux shell命令

安装python和python-fabric
$apt-get install python
$pip install fabric

添加主机列表
$vim server_list.txt
193.168.2.* root root

修改server_list.txt内容格式如下
host user password
只能有一个空格隔开

在commands目录下添加对应主机的host.sh运行脚本文件
修改193.168.2.*.txt内容格式如下
例子：
$vim commands/193.168.2.*.sh 
touch xing.txt
ls
touch xing_dddd.txt
ls
注意：脚本是一行一行运行的，没有会话，如果要操作文件请用绝对path。

运行./remote_shell.sh
