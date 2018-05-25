
查看当前使用的shell
```shell
echo $SHELL
```

查看系统安装的shell
```shell
cat /etc/shells
# 或者
chsh -l
```

修改登录的shell，加上-s参数能修改登录的shell
```shell
chsh -s /bin/zsh
```

实际上修改了/etc/passwd文件

