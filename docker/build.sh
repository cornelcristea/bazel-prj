#!/bin/bash

SRC_DIR=../src
LIB_DIR=../lib
WS_FILE=../WORKSPACE

cp -r $SRC_DIR .
cp -r $LIB_DIR .
cp -r $WS_FILE .

docker build . -t bazel-app