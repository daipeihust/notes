

原型
```py
lambda 参数:操作(参数)
```



```py
points = [{'x': 2, 'y': 3},
          {'x': 4, 'y': 1}]
points.sort(key=lambda i: i['y'])
print(points)
```