#!/bin/bash
set -xe

# Start Node, the application server.
systemctl yum install npm
systemctl npm run start