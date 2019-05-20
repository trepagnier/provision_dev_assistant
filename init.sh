#!/bin/bash

ssh -i '~/development/keys/provisioner.pem' ubuntu@ec2-3-92-28-15.compute-1.amazonaws.com 'bash -s' < update_dockerfile.sh
