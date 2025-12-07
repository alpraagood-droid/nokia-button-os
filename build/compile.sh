#!/bin/bash
# Build script: create a zip of hosted app for KaiStore (packaged apps recommended)
set -e
APP_DIR="../apps/dialer"
OUT="../build/dialer.zip"

cd $APP_DIR
zip -r $OUT . -x "*.DS_Store"
echo "Built $OUT"
