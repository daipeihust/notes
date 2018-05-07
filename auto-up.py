
import os
from threading import Timer

minutes = 15

def upTask():
    # os.system('git pull')
    # os.system('git add --all')
    # os.system('git commit -m \'update notes\'')
    # os.system('git push')
    os.system('./up.sh')
    Timer(60 * minutes, upTask).start()

upTask()
