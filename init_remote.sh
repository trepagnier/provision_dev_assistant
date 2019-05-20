#!/bin/bash

source config.sh
ssh -i $PEM ubuntu@$AWS_URL 'bash -s' < remote/update_dockerfile.sh
