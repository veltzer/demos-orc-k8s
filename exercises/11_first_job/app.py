#!/usr/bin/env python3

"""
This is an example of a job that calculated the sum of squared until 1,000,000
"""

print("starting...")
my_sum = 0
for i in range(100000000):
    my_sum=my_sum+i*i
print(my_sum)
