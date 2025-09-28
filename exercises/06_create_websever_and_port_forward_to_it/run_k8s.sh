#!/bin/bash -eu

kubectl run --image=flask:local flask --port=8000
