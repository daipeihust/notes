
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

函数内可以直接声明全局变量，global使用的时候只能声明，不能赋值

```py
def f1():
    global x, y, z
    x = 1
    y = 2
    z = 3

f1()
print(x, y, z)
```