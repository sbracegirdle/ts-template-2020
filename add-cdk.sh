#!/usr/bin/env bash

set -e


mkdir -p src/stacks
cat > src/stacks/MyStack.ts <<- EOM
import * as cdk from '@aws-cdk/core'

export class MyStack extends cdk.Stack {
  constructor(scope: cdk.Construct, id: string, props: cdk.StackProps) {
    super(scope, id, props)
  }
}
EOM

mkdir -p src/apps
cat > src/apps/MyApp.ts <<- EOM
import * as cdk from '@aws-cdk/core'

const app = new cdk.App()
EOM

cat > cdk.json <<- EOM
{
  "app": "npx ts-node src/apps/MyApp.ts",
  "context": {
    "@aws-cdk/core:newStyleStackSynthesis": true,
    "@aws-cdk/core:enableStackNameDuplicates": "true",
    "aws-cdk:enableDiffNoFail": "true",
    "profile": "default"
  }
}
EOM


npm i --save-dev --save-exact aws-cdk @aws-cdk/assert
npm i --save --save-exact @aws-cdk/core
