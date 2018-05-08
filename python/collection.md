# Set

创建集合
```py
a_set = {'red', 'blue', 'green'}
print(type(a_set))
```

交集
```py
valid = set(['yellow', 'red', 'blue', 'green', 'black'])
input_set = set(['red', 'brown'])
print(input_set.intersection(valid))
### 输出: set(['red'])
```

差集
```py
valid = set(['yellow', 'red', 'blue', 'green', 'black'])
input_set = set(['red', 'brown'])
print(input_set.difference(valid))
### 输出: set(['brown'])
```

# List

```py
shoplist = ['apple', 'mango', 'carrot', 'banana']
```

# Tuple（元祖）

```py
zoo = ('python', 'elephant', 'penguin')
```

# Dict（字典）

```py
ab = {
    'Swaroop': 'swaroop@swaroopch.com',
    'Larry': 'larry@wall.org',
    'Matsumoto': 'matz@ruby-lang.org',
    'Spammer': 'spammer@hotmail.com'
}
```

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

# defaultdict

```py
from collections import defaultdict

colours = (
    ('Yasoob', 'Yellow'),
    ('Ali', 'Blue'),
    ('Arham', 'Green'),
    ('Ali', 'Black'),
    ('Yasoob', 'Red'),
    ('Ahmed', 'Silver'),
)

favourite_colours = defaultdict(list)

for name, colour in colours:
    favourite_colours[name].append(colour)

print(favourite_colours)
# output:
# defaultdict(<type 'list'>,
#    {'Arham': ['Green'],
#     'Yasoob': ['Yellow', 'Red'],
#     'Ahmed': ['Silver'],
#     'Ali': ['Blue', 'Black']
# })
```

在一个字典中对一个键进行嵌套赋值

```py
import collections
tree = lambda: collections.defaultdict(tree)
some_dict = tree()
some_dict['colours']['favourite'] = "yellow"

## 运行正常
```