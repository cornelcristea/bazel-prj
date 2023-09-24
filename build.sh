#!/bin/bash

BUILD_DIR="./build"                         # build folder

if [ -d $BUILD_DIR ]; then
    rm -r $BUILD_DIR                        # delete old build folder
fi

mkdir $BUILD_DIR                            # create build folder 
bazel build src:app --verbose_failures      # call bazel command
mv ./bazel* $BUILD_DIR                      # move outputs in build folder
