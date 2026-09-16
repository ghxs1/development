#!/bin/bash

# Cleanup the terraform environment after the EC2 instance is deprovisioned.

rm -rf .terraform
rm .terraform.lock.hcl
rm terraform.tfstate
rm terraform.tfstate.backup