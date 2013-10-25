#!/bin/sh

# web url reference
# http://mcdee.com.au/setup-python-boto-aws-ubuntu-13-04/

sudo apt-get update

sudo apt-get install -y python python-dev
sudo apt-get install -y python-pip

sudo pip install boto


python -c "import boto; print boto.Version"

