#!/usr/bin/env python3

"""
This is an app which catched SIGTERM to do some cleanup.
"""

import time
import sys
import signal


def do_term(_signum, *_args):
    """ handle the signal """
    print("terminting the app")
    sys.stdout.flush()


signal.signal(signal.SIGTERM, do_term)
i = 0
while True:
    print(f"i is {i}...")
    sys.stdout.flush()
    time.sleep(1)
    i += 1
