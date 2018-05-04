
```python
import time

timeStr = '2018-05-04 19:40:21'
timeValue = time.mktime(datetime.datetime.strptime(timeStr, "%Y-%m-%d %H:%M:%S").timetuple())
```