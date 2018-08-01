
让某个软件支持按键连续
```
defaults write ${CFBundleIdentifier} ApplePressAndHoldEnabled -bool false
```

设置全局按键连续
```
defaults delete -g ApplePressAndHoldEnabled
```