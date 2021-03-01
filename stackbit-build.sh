#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/603d08f3d9b35b0015d97803/webhook/build/pull > /dev/null
curl -s -X POST https://api.stackbit.com/project/603d08f3d9b35b0015d97803/webhook/build/ssgbuild > /dev/null
jekyll build
curl -s -X POST https://api.stackbit.com/project/603d08f3d9b35b0015d97803/webhook/build/publish > /dev/null
