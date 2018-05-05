
# 切片运算

列表、元组、字符串均支持（序列）
```py
shoplist = ['apple', 'mango', 'carrot', 'banana']
print('Item 0 is', shoplist[0])
print('Item -1 is', shoplist[-1])
print('Item 1 to 3 is', shoplist[1:3])
print('Item start to end is', shoplist[:])
print(shoplist[::2])
```

# 获得集合类对象副本

```py
shoplist = ['apple', 'mango', 'carrot', 'banana']
mylist = shoplist[:]
```