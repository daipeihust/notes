
a = [1,'hi', 3.14, 1, 2, [4, 5]]

p a[2]                  # 3.14
p a.[]（2）              # 3.14
p a.reverse             # [[4, 5], 2, 1, 3.14, 'hi', 1]
p a.flatten.uniq        # [1, 'hi', 3.14, 2, 4, 5]