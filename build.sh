#!/bin/bash

#uncomment to debug
#set -x

APP_NAME=aboutsync
XPI=$APP_NAME.xpi
ZIP_CMD="zip -9 -q"

rm $XPI
$ZIP_CMD $XPI README.md chrome.manifest manifest.json ext_bootstrap.js webext/*

# It's called build-js since it doesn't exeucte this build script
npm run build-js

# The data directory non-recursively.
$ZIP_CMD $XPI data/*

# Report details about what we created.
find $XPI -maxdepth 1 -printf '%f, %s bytes'
echo

# AMO is likely to want a .zip file with the sources - if they do, just link to
# https://github.com/mhammond/aboutsync/archive/{your-release-number}.zip
