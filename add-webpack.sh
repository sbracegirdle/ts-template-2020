#!/usr/bin/env bash

set -e

npm install --save-dev --save-exact webpack webpack-cli ts-loader zip-webpack-plugin

cat > webpack.config.ts <<- EOM
import path from 'path'

import { Configuration } from 'webpack'
import ZipPlugin from 'zip-webpack-plugin'

const config: Configuration = {
  entry: {
    myThing: './src/myThing',
  },
  mode: 'production',
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        loader: 'ts-loader',
        exclude: /node_modules/,
        options: {
          transpileOnly: true,
        },
      },
    ],
  },
  externals: {
    'aws-sdk': 'aws-sdk',
  },
  resolve: {
    extensions: ['.tsx', '.ts', '.js'],
  },
  target: 'node',
  output: {
    libraryTarget: 'commonjs',
    filename: '[name].js',
    path: path.resolve(__dirname, 'dist'),
  },
  plugins: [
    new ZipPlugin({
      path: 'zip',
      filename: 'my-thing.zip',
    }),
  ],
}

export default config
EOM

