

# 使用*args和**kwargs

```py
def test_method(v1, v2, v3):
    print(v1, v2, v3)

vs = ('a', 'c', 'd')
test_method(*vs)

vs2 = {"v1": 1, "v2": 2, "v3": 3}
test_method(**vs2)
```

# map

```py
items = [1, 2, 3, 4, 5]
# 在Python3中map返回的是迭代器，需要用list转换成列表
squared = list(map(lambda x: x**2, items))
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

```py
def fibon(n):
    a = b = 1
    for i in range(n):
        yield a
        a, b = b, a + b

for x in fibon(1000000):
    print(x)
```
