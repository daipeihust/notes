
# 简易Web Server
通过网络快速共享文件
```py
# Python 2
python -m SimpleHTTPServer

# Python 3
python -m http.server
```

# CSV转json

```py
python -c "import csv,json;print json.dumps(list(csv.reader(open('csv_file.csv'))))"
```

# 列表碾平

```py
a_list = [[1, 2], [3, 4], [5, 6]]
print(list(itertools.chain.from_iterable(a_list)))
# Output: [1, 2, 3, 4, 5, 6]

# or
print(list(itertools.chain(*a_list)))
# Output: [1, 2, 3, 4, 5, 6]
```
# 脚本性能分析

```shell
python -m cProfile my_script.py
```
