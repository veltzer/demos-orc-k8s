#!/usr/bin/env python

"""
This is a python application which dies from time to time
"""

import time
import sys


def main():
    """ main entry point """
    print("starting...")
    for i in range(60):
        print(f"i is {i}")
        sys.stdout.flush()
        time.sleep(1)
    raise ValueError("Help, I'm crashing!")


if __name__ == "__main__":
    main()
