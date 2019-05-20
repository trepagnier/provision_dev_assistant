#!/bin/bash

source config.sh
cd ../rasterflow-seahorse
REMOTE_AEAI_URI=http://$AWS_URL:33321 docker-compose up
