#!/usr/bin/env bash

set -e

rm -rf .git/

npm i --save-dev --save-exact \
  @types/node \
  typescript ts-node \
  mocha @types/mocha \
  chai chai-as-promised @types/chai \
  sinon @types/sinon \
  prettier \
  eslint eslint-plugin-import @typescript-eslint/parser @typescript-eslint/eslint-plugin


