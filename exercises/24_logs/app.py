#!/usr/bin/env python3

"""
This is an example of a job that calculated the sum of squared until 1,000,000
"""

import time
import sys


def main():
    """ main entry point """
    for counter in range(10):
        print(f"counter is [{counter}]...")
        sys.stdout.flush()
        time.sleep(1)


if __name__ == "__main__":
    main()
