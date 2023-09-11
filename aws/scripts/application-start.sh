#!/bin/bash
set -xe

# Start Node, the application server.
systemctl apt-get install npm
systemctl npm run start