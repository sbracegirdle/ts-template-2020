#!/usr/bin/env bash

set -e

# Add functional things
npm install --save --save-exact fp-ts io-ts
npm install --save-dev --save-exact eslint-plugin-functional 
# {
#   // ...
#   "plugins": ["functional"],
#   "extends": [
#     "plugin:functional/recommended",
#   ]
# }