获取重定向后的url
```
curl -Ls -o /dev/null -w %{url_effective} http://google.com
```
具体解释如下：
```
-L         Follow redirects
-s         Silent mode. Don't output anything
-o FILE    Write output to <file> instead of stdout
-w FORMAT  What to output after completion
```