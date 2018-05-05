
# 获取命令行参数

```py
import sys

for i in sys.argv:
    print(i)

```

# 获取当前目录

```py
import os

print(os.getcwd())
```

# 获取模块名称

如果值为__main__说明这一模块为用户独立运行，否则是被导入后运行
```py
print(__name__)
```

# 模块的名称列表

不传参数则获取当前模块名称列表，dir可以作用于任何对象
```py
import sys

print(dir(sys))
print(dir())

```

删除当前模块的一个名称

```py
a = 1
print(dir())

del a
print(dir())
```

# 目录分隔符

```py
import sys

sys.sep
```

# 格式化时间字符串

```py
import time

time.strftime('%Y%m%d%H%M%S')
```

# 时间字符串转换为时间戳 

```python
import time

timeStr = '2018-05-04 19:40:21'
timeValue = time.mktime(datetime.datetime.strptime(timeStr, "%Y-%m-%d %H:%M:%S").timetuple())
```