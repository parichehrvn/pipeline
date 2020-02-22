#!/bin/bash

set -e

for region in us-east-2
do
  aws cloudformation create-stack --region $region --stack-name lambda-benchmarking-prerequisites --template-body file://per-region-prerequisites.yaml
done
