#!/bin/bash
set -xe

# Download Node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 16

# Test
node -e "console.log('Running Node.js ' + process.version)"

tar -xzvf augmego-web-app.tar.gz -C /usr/local/node/webapps/
cd /usr/local/node/webapps/
ls

# Start Node, the application server.
npm run start