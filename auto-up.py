#!/usr/local/bin/python3

import os
from threading import Timer

minutes = 60
minutes = 70

def upTask():
    os.system('./up.sh')
    Timer(60 * minutes, upTask).start()

upTask()
