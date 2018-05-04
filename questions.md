1. As the example demonstrates, the address of a stack variable is escaping the scope in which it is allocated. That is a classic C bug.
2. 为什么尽量使用const去定义常量而少用宏？
因为宏可以被重新定义，所以你最终得到的常量可能不是你预期的，并且const声明常量是具有类型信息的，宏是没有的
既然宏是在编译前去做替换，我觉得宏最佳的使用场景是同一套代码有多个target，用宏来控制这些target中不同的地方
3. NSPredicate是什么？
用于对集合中的对象进行筛选，可以定义一些过滤规则，支持正则表达式
4. NSURLProtocol
可以用来拦截http请求
5. 反汇编一段代码
6. extern NSMutableURLRequest * CanonicalRequestForRequest(NSURLRequest *request)
7. va_start(ap, param) va_end(ap) va_list

