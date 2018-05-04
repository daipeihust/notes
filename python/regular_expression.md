
```python
import re

str1 = 'aaa2018-05-04 19:40:21bbb'
so = re.search(r'\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}:\d{2}', str1, 0)
str2 = so.group()
print(str2)
# '2018-05-04 19:40:21'
```