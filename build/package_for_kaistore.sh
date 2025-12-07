#!/bin/bash
# Package multiple apps into uploads ready for KaiStore submission
set -e
ROOT="$(cd "$(dirname "$0")"/..; pwd)"
cd $ROOT/apps
for d in */; do
  echo "Packaging $d"
  (cd "$d" && zip -r "../../build/${d%/}.zip" .)
done
echo "All packaged in build/"
