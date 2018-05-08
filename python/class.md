
# 类、类方法、实例方法、类变量、实例变量
``` python

class Line:
    # class value
    position = 0
    value = 0
 
    def __init__(self, pos, val):
        # instance value
        self.position = pos
        self.value = val

    def printInstanceValue(self):
        print(self.position, self.value)

    
    def printClassValue1(self):
        print(self.__class__.position, self.__class__.value)
        #print(Line.position, Line.value)

    @classmethod
    def printClassValue2(cls):
        print(cls.position, cls.value)

    
# 实例化
line = Line(1, 1)
line.printClassValue1()
line.printInstanceValue()
line.printClassValue2()
Line.printClassValue2()

```

# 继承

```py
class one:
    def __init__(self, val1):
        self.val1 = val1
        pass

class two(one):
    def __init__(self, val1, val2):
        one.__init__(self, val1)
        self.val2 = val2
```

# __call__

