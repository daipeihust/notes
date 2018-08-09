#!/usr/local/bin/python3

import requests
import time
import random


while True:
    tem = random.randint(30, 40)
    pre = 2 + random.random()
    log = {'temperature': tem, 'pressure': pre}
    print(log)
    body = {'username': 'daipei5', 'mac': 'b6:00:1d:d0:2c:34', 'log': log}
    r = requests.post('http://localhost:3521/device/log', json=body)
    print(r.json())
    time.sleep(2)
