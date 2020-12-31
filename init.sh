#!/usr/bin/env bash

set -e

mkdir -p src
mkdir -p test/unit

rm -rf .git/

npm i --save-dev --save-exact \
  npm-run-all \
  @types/node \
  typescript ts-node \
  mocha @types/mocha \
  chai chai-as-promised @types/chai @types/chai-as-promised \
  sinon @types/sinon \
  prettier \
  eslint eslint-plugin-import @typescript-eslint/parser @typescript-eslint/eslint-plugin


