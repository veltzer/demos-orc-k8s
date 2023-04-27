#!/usr/bin/env python3

"""
A flask application that can be crashed
"""

import os
import signal
from flask import Flask


app = Flask("app")


@app.route("/")
def root():
    """ root url """
    return "<html><body><h1>python with flask in a docker!<h1></body><html>"


@app.route('/crash')
def crash():
    """ crash url """
    os.kill(os.getpid(), signal.SIGINT)
    return "Server is shutting down..."


app.run(port=8080, host="0.0.0.0")
