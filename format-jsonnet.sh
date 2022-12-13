#!/usr/bin/env bash

for file in $(find ./ -name *.jsonnet); do
  jsonnetfmt -i $file
done