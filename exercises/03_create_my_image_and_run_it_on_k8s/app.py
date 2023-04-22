#!/usr/bin/python

from flask import Flask

app = Flask("flask_app")

@app.route("/")
def hello():
    return 'this is a flask app'

app.run(port=8000, host="0.0.0.0")
