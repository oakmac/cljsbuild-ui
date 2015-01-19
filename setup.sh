#!/bin/sh

# exit on errors
set -e

echo; echo "Installing node dependencies..."
npm install

echo; echo "Installing grunt..."
sudo npm install -g grunt-cli

echo; echo "Installing winresourcer..."
sudo npm install -g winresourcer

echo; echo "Installing Leiningen jar..."
grunt curl

echo; echo "Installing Atom Shell..."
grunt download-atom-shell

echo; echo "Building lein profile tool..."
./build-lein-profile-tool.sh

echo; echo "Building Cuttle locally..."
grunt less
lein cljsbuild once

echo; echo "Cuttle setup complete."
