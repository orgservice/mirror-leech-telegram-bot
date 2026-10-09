#!/bin/bash
set -e

PYTHON="/app/mltbenv/bin/python"

"$PYTHON" -m pip install --disable-pip-version-check --no-cache-dir pycountry
"$PYTHON" update.py
"$PYTHON" -m bot
