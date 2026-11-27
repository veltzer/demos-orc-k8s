#!/usr/bin/env python

"""
This is an example of a job that calculated the sum of squared until 1,000,000
"""

import time


def main():
    """ main entry point """
    for counter in range(1000):
        print(f"counter is [{counter}]...")
        # sys.stdout.flush()  # noqa: ERA001  teaching: kept in the comment for the reader
        time.sleep(1)


if __name__ == "__main__":
    main()
