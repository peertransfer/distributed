#!/bin/sh
LAST_COMMIT=$(git log -1 --pretty=format:'%h %an %s')
echo "Deploying changes from $LAST_COMMIT"
# gh-pages -r git@github.com:funretro/distributed.git -d dist -m "Updates from $LAST_COMMIT"
cd dist
npm_bin=$(npm bin)
$npm_bin/firebase login
$npm_bin/firebase deploy
