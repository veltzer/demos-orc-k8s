#!/usr/bin/env python3

"""
This is an example of how to do corrent printing to stdout in docker
since stdout is buffered by default.

Two ways are shown here:
- sys.stdout.reconfigure
- sys.stdout.flush
any of them would work on its own.
"""

import time
import sys
import signal


def do_exit(_signum, *_args):
    """ handle the signal """


signal.signal(signal.SIGINT, do_exit)
i = 0
while True:
    print(f"i is {i}...")
    sys.stdout.flush()
    time.sleep(1)
    i += 1
