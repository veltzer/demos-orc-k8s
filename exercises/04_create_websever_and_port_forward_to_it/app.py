#!/usr/bin/python

"""
A simple flask web server
"""

from flask import Flask

app = Flask("flask_app")


@app.route("/")
def root():
    """ root url """
    return "this is a flask app"


app.run(port=8000, host="0.0.0.0")
