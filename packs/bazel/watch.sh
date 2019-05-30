#!/usr/bin/env bash

# watch the java files and continously deploy the service
skaffold run -p dev
reflex -r "\.java$" -- bash -c 'bazel build ... && skaffold run -p dev'
