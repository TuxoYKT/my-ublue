#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
git clone https://gitlab.com/asus-linux/firmware.git --depth 1 /tmp/asus-firmware && \
cp -rf /tmp/asus-firmware/* /usr/lib/firmware/ && \
rm -rf /tmp/asus-firmware \
