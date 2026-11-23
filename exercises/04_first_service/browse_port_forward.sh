#!/bin/bash -eu

{ wget -nv -O- "http://localhost:5000" || true; } | head
