#!/usr/bin/env python3

"""
This is a python application which dies from time to time
"""

import time


def main():
    """ main entry point """
    print("starting...")
    for i in range(20):
        print(f"i is {i}")
        time.sleep(1)
    # raise ValueError("Help, I'm crashing!")


if __name__ == "__main__":
    main()
