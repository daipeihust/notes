
# 定义函数
不带参数
```py
def say_hello():
    # 该块属于这一函数
    print('hello world')
# 函数结束

say_hello()  # 调用函数
say_hello()  # 再次调用函数
```

带参数
```py
def print_max(a, b):
    if a > b:
        print(a, 'is maximum')
    elif a == b:
        print(a, 'is equal to', b)
    else:
        print(b, 'is maximum')

```

函数内可以直接声明全局变量，global使用的时候不能同时赋值，可以声明已存在或未存在的全局变量

```py
def f1():
    global x, y, z
    x = 1
    y = 2
    z = 3

f1()
print(x, y, z)
```

默认参数

```py
def say(message, times=1):
    print(message * times)

say('Hello')
say('World', 5)
```

关键字参数

```py
def func(a, b=5, c=10):
    print('a is', a, 'and b is', b, 'and c is', c)

func(3, 7)
func(25, c=24)
func(c=50, a=100)
```

可变参数

```py
def total(a=5, *numbers, **phonebook):
    print('a', a)

    #遍历元组中的所有项目
    for single_item in numbers:
        print('single_item', single_item)

    #遍历字典中的所有项目
    for first_part, second_part in phonebook.items():
        print(first_part,second_part)

print(total(10,1,2,3,Jack=1123,John=2231,Inge=1560))
```

没有返回值的函数默认返回None，pass语句用于指示一个没有内容的语句块
```py
def some_function():
    pass
print(some_function()) # None
```

DocStrings（文档字符串）

```py
def print_max(x, y):
    '''打印两个数值中的最大数。

    这两个数都应该是整数'''
    # 如果可能，将其转换至整数类型
    x = int(x)
    y = int(y)

    if x > y:
        print(x, 'is maximum')
    else:
        print(y, 'is maximum')

print_max(3, 5)
print(print_max.__doc__)
```
