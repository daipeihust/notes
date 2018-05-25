
一般用法
```py
f = open('photo.jpg', 'r+')
jpgdata = f.read()
f.close()
```

更好的用法
```py
with open('photo.jpg', 'r+') as f:
    jpgdata = f.read()
```

兼容2和3的方法
```py
import io

with open('photo.jpg', 'rb') as inf:
    jpgdata = inf.read()

if jpgdata.startswith(b'\xff\xd8'):
    text = u'This is a JPEG file (%d bytes long)\n'
else:
    text = u'This is a random file (%d bytes long)\n'

with io.open('summary.txt', 'w', encoding='utf-8') as outf:
    outf.write(text % len(jpgdata))
```