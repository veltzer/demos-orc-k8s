#!/usr/bin/env python

"""
Simple app in python
"""

import time
import sys

i = 0
while True:
    print(f"i is {i}...")
    sys.stdout.flush()
    if i==5:
        raise Exception("this is an error")
    time.sleep(1)
    i += 1
