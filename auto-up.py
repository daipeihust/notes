
import os
from threading import Timer

def upTask():
    os.system('git pull')
    os.system('git add --all')
    os.system('git commit -m \'update notes\'')
    os.system('git push')
    Timer(30, upTask).start()

upTask()
