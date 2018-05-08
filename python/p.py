#!/usr/local/bin/python3

class my_class(object):
    def __init__(self):
        print('init')
    
    def __call__(self):
        print('call')

my_class()()