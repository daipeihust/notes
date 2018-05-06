
class one:
    def __init__(self, val1):
        self.val1 = val1
        pass

class two(one):
    def __init__(self, val1, val2):
        one.__init__(self, val1)
        self.val2 = val2
