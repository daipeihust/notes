
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