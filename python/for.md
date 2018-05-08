
# 普通for循环
```py
for i in range(1, 5):
    print(i)
else:
    print('The for loop is over')
```

输出结果
```
1
2
3
4
The for loop is over
```

# 不以1来逐步递增
```py
for i in range(1, 5, 2):
    print(i)
else:
    print('The for loop is over')
```

输出结果
```
1
3
The for loop is over
```

# 列表推导

```py
listone = [2, 3, 4]
listtwo = [2*i for i in listone if i > 2]
print(listtwo) # [6, 8]
```

# 遍历*args和**kwargs

```py
def test_var_args(f_arg, *argv):
    print("first normal arg:", f_arg)
    for arg in argv:
        print("another arg through *argv:", arg)

test_var_args('yasoob', 'python', 'eggs', 'test')
```

```py
def greet_me(**kwargs):
    for key, value in kwargs.items():
        print("{0} == {1}".format(key, value))
```