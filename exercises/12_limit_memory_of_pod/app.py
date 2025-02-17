#!/usr/bin/env python

"""
Application which grows in memory requirements all the time
"""

import time
import sys
import random

big_array = []
while True:
    add_array = [random.randint(0, 100) for _ in range(300000)]
    big_array.extend(add_array)
    print(f"size of array is [{len(big_array)}]...")
    sys.stdout.flush()
    time.sleep(1)
