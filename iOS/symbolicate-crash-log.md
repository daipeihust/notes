
# symbolicate with atos

[https://developer.apple.com/library/archive/technotes/tn2151/_index.html](https://developer.apple.com/library/archive/technotes/tn2151/_index.html)

The same backtrace at various levels of symbolication.
![The same backtrace at various levels of symbolication.](./image/tn2151_symbolication_levels.png)

Information from the crash report that is needed to use atos.
![Information from the crash report that is needed to use atos.](./image/tn2151_atos_info.png)

```shell
atos -arch arm64 -o TheElements.app.dSYM/Contents/Resources/DWARF/TheElements -l 0x1000e4000 0x00000001000effdc
```