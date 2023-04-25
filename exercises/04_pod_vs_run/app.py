#!/usr/bin/env python3

from flask import Flask
import os
import signal

app = Flask("app")

@app.route("/")
def root():
    return "<html><body><h1>this is python with flask in a docker!<h1></body><html>"

@app.route('/crash')
def stopServer():
    os.kill(os.getpid(), signal.SIGINT)
    return "Server is shutting down..."

app.run(port=8080, host="0.0.0.0")
