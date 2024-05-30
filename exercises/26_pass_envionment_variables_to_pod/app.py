#!/usr/bin/env python

"""
This is a python app that prints all of its environment variables
"""

import os


def main():
    """ main entry point """
    for k, v in os.environ.items():
        print(f"{k} => {v}")


if __name__ == "__main__":
    main()
