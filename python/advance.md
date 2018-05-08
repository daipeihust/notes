

# 使用*args和**kwargs

```py
def test_method(v1, v2, v3):
    print(v1, v2, v3)

vs = ('a', 'c', 'd')
test_method(*vs)

vs2 = {"v1": 1, "v2": 2, "v3": 3}
test_method(**vs2)
```


# 迭代


```py
# 字符串是可迭代对象（实现了__iter__或__getitem__方法的对象）
my_str = 'hello'

# 两个列表都不为空
my_list = list(my_str)
my_list2 = list(my_str)

# 对其调用iter方法可以获得迭代器（实现了__next__方法的对象）
my_iter = iter(my_str)

print(next(my_iter)) # Output: h

# list方法可以将迭代器转换为列表，list方法也可以直接将可迭代对象转换为列表
my_list = list(my_iter) # ['e', 'l', 'l', 'o']

# my_list2为空列表，可迭代对象可以被多次迭代，迭代器只能被一次迭代
my_list2 = list(my_iter)
```

# 生成器
生成器也是一种迭代器
```py
def fibon(n):
    a = b = 1
    for i in range(n):
        yield a
        a, b = b, a + b

fi = fibon(10) # <generator object fibon at 0x10c37a1a8>

for x in fi:
    print(x)
```

# Map

```py
items = [1, 2, 3, 4, 5]
# 在Python3中map返回的是迭代器，需要用list转换成列表
squared = list(map(lambda x: x**2, items))
```

```py
def multiply(x):
        return (x*x)
def add(x):
        return (x+x)

funcs = [multiply, add]
for i in range(5):
    value = map(lambda x: x(i), funcs)
    print(list(value))

# Output:
# [0, 0]
# [1, 2]
# [4, 4]
# [9, 6]
# [16, 8]
```

# Filter

```py
number_list = range(-5, 5)
less_than_zero = filter(lambda x: x < 0, number_list)
print(list(less_than_zero))  

# Output: [-5, -4, -3, -2, -1]
```

# Reduce

```py
from functools import reduce
product = reduce( (lambda x, y: x * y), [1, 2, 3, 4] )

# Output: 24
```

# 列表推导

```py
listone = [2, 3, 4]
listtwo = [2*i for i in listone if i > 2]
print(listtwo) # [6, 8]
```