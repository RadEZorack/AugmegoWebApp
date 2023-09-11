#!/bin/bash
set -xe

# Download Node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 16

# Test
node -e "console.log('Running Node.js ' + process.version)"

ls
mkdir augmego-web-app
tar -tvf augmego-web-app.tar -C /augmego-web-app
cd augmego-web-app
ls

# Start Node, the application server.
npm run start