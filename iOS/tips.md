
# 类归属判断

一定要用isKindOfClass:进行判断，不能通过获取类通过==去判断

# UIScreen scale

[[UIScreen main] scale] == 1; //代表320 x 480 的分辨率（就是iphone4之前的设备，非Retain屏幕）
[[UIScreen main] scale] == 2; //代表640 x 960 的分辨率（Retain屏幕）
[[UIScreen main] scale] == 3; //代表1242 x 2208 的分辨率