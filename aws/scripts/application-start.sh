#!/bin/bash
set -xe

# Download Node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 16

# Test
node -e "console.log('Running Node.js ' + process.version)"

npm install -g typescript

cd /usr/local/node/
ls
tar -xvf augmego-web-app.tar.gz -C /usr/local/node/
ls

# Start Node, the application server.
npm install
npm i --save-dev @types/node
npm run build
npm run start