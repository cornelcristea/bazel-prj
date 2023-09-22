#!/bin/bash

bazel clean
bazel build src:main --verbose_failures
