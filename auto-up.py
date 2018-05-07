
import os
from threading import Timer

minutes = 15

def upTask():
    os.system('./up.sh')
    Timer(60 * minutes, upTask).start()

upTask()
