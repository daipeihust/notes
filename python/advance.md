

# 使用*args和**kwargs

```py
def test_method(v1, v2, v3):
    print(v1, v2, v3)

vs = ('a', 'c', 'd')
test_method(*vs)

vs2 = {"v1": 1, "v2": 2, "v3": 3}
test_method(**vs2)
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

# map

```py
items = [1, 2, 3, 4, 5]
squared = list(map(lambda x: x**2, items))
```

