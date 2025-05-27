#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Print each command before executing it (for debugging)
set -x

# Variables
APP_NAME="my-app"
BUILD_DIR="build"
DEPLOY_DIR="/var/www/html/$APP_NAME"

# Step 1: Build the app
echo "Building the application..."
npm install
npm run build

# Step 2: Deploy to server directory (local example)
echo "Deploying to $DEPLOY_DIR..."
rm -rf "$DEPLOY_DIR"
mkdir -p "$DEPLOY_DIR"
cp -r "$BUILD_DIR"/* "$DEPLOY_DIR"

# Step 3: Clean up
echo "Deployment completed successfully!"
