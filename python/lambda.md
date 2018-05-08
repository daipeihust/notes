

原型
```py
lambda 参数:操作(参数)
```

例子
```py
add = lambda x, y: x + y

print(add(3, 5))
# Output: 8
```


```py
points = [{'x': 2, 'y': 3},
          {'x': 4, 'y': 1}]
points.sort(key=lambda i: i['y'])
print(points)
```