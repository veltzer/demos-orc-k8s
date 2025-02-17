#!/usr/bin/env python

"""
A flask application that can be crashed
"""

import socket
from flask import Flask


app = Flask("app")


@app.route("/")
def root():
    """ root url """
    ip_address = socket.gethostbyname(socket.gethostname())
    return f"Pod IP: {ip_address}"


app.run(port=8080, host="0.0.0.0")
