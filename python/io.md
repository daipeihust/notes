
# input

python3
```python
# 该方法就是python2中的raw_input
val = input('input: ')
print(val)
```

python2
``` python
# 该方法在python2中输入字符串时必须用双引号扩起来，用户输入的时候需要明确格式
# val = input('input: ') 
# 该方法默认输入为字符串
val = raw_input('input: ')
print(val)
```

# print

## 格式化输出
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

## 不带换行符的输出
```python
print('a', end='')
print('b', end='')
```
输出
```
ab
```

## 将一系列字符串以空格连接并输出

```python
print('a', 'b', 'c')
```

输出
```
a b c
```

