#!/bin/bash
set -xe

# Download Node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. ~/.nvm/nvm.sh
nvm install --lts

# Test
node -e "console.log('Running Node.js ' + process.version)"

# Start Node, the application server.
npm run start