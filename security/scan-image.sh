#!/bin/bash

set -e 

IMAGE="$1"

if [ -z "$IMAGE" ]; then
    echo "ERROR: Container image is required."
    echo "Usage: ./security/scan-image.sh <image>"
    exit 1 # Exit with no-zero error code to fail fast. 
fi

echo "Running Trivy scan on ... $IMAGE "

trivy image \
  --severity HIGH,CRITICAL \
  --exit-code 1 \
  "$IMAGE"

echo "Container vulnerability scan passed."

