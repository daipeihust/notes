

# 格式化输出
```python
age = 20
name = 'Swaroop'

print('{0} was {1} years old when he wrote this book'.format(name, age))
print('Why is {0} playing with that python?'.format(name))
```

也可以不写数字
```python
age = 20
name = 'Swaroop'

print('{} was {} years old when he wrote this book'.format(name, age))
print('Why is {} playing with that python?'.format(name))
```

输出
```
Swaroop was 20 years old when he wrote this book
Why is Swaroop playing with that python?
```

# 不带换行符的输出
```python
print('a', end='')
print('b', end='')
```
输出
```
ab
```
