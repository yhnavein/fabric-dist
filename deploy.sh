#!/bin/bash
set -e

yarn

cp node_modules/fabric/dist/fabric.js ./fabric.js

VERSION=$(jq -r '.version' package.json)

echo "Version to publish: $VERSION"

npm publish

git add package.json
git commit -m "chore: published version $VERSION"