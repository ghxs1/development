#!/bin/bash

set -e 

echo "Running SAST scan..."

semgrep \
  --config=p/python \
  --error \
  --json \
  --output=sast-results.json \
  .

echo "SAST scan passed."