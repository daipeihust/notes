
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

# 处理异常

```py
try:
    text = input('Enter something --> ')
except EOFError:
    print('Why did you do an EOF on me?')
except KeyboardInterrupt:
    print('You cancelled the operation.')
else:
    print('You entered {}'.format(text))
```

# 抛出异常

```py
class ShortInputException(Exception):
    '''一个由用户定义的异常类'''
    def __init__(self, length, atleast):
        Exception.__init__(self)
        self.length = length
        self.atleast = atleast

try:
    text = input('Enter something --> ')
    if len(text) < 3:
        raise ShortInputException(len(text), 3)
    # 其他工作能在此处继续正常运行
except EOFError:
    print('Why did you do an EOF on me?')
except ShortInputException as ex:
    print(('ShortInputException: The input was ' +
           '{0} long, expected at least {1}')
          .format(ex.length, ex.atleast))
else:
    print('No exception was raised.')
```

# try...finally

```py
import sys
import time

f = None
try:
    f = open("poem.txt")
    # 我们常用的文件阅读风格
    while True:
        line = f.readline()
        if len(line) == 0:
            break
        print(line, end='')
        sys.stdout.flush()
        print("Press ctrl+c now")
        # 为了确保它能运行一段时间
        time.sleep(2)
except IOError:
    print("Could not find file poem.txt")
except KeyboardInterrupt:
    print("!! You cancelled the reading from the file.")
finally:
    if f:
        f.close()
    print("(Cleaning up: Closed the file)")
```

使用with语句可以达到同样效果

```py
with open("poem.txt") as f:
    for line in f:
        print(line, end='')
```

# 处理命令行选项

```py
import argparse

parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument('integers', metavar='N', type=int, nargs='+',
                    help='an integer for the accumulator')
parser.add_argument('--sum', dest='accumulate', action='store_const',
                    const=sum, default=max,
                    help='sum the integers (default: find the max)')

args = parser.parse_args()
print(args.accumulate(args.integers))
```

# assert

```py
>>> mylist = ['item']
>>> assert len(mylist) >= 1
>>> mylist.pop()
'item'
>>> assert len(mylist) >= 1
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AssertionError
```