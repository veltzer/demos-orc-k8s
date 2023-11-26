#!/usr/bin/env python3

"""
Simple app in python
"""

import time
import sys

i = 0
while True:
    print(f"i is {i}...")
    sys.stdout.flush()
    time.sleep(1)
    i += 1
