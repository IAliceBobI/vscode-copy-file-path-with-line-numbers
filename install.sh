#!/bin/bash
set -e

echo "Installing dependencies..."
npm install

echo ""
echo "Packaging extension..."
npx vsce package -o extension.vsix

echo ""
echo "Installing to VS Code..."
code --install-extension extension.vsix --force

echo ""
echo "Installation complete!"
