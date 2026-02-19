#!/bin/bash

NODE_VERSION=25.6.1

# Actually install node
mkdir /tmp/node
cd /tmp/node
curl -L -# "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" -o node.tar.xz
tar -xf node.tar.xz --strip-components=1
cp -r bin include lib share /usr/local/
cd /
rm -rf /tmp/node

# Setup corepack and pnpm
npm i -g corepack
corepack enable pnpm
