#!/bin/bash

rm -rf myfunc/
docker build --no-cache -t fndemo/stacks-fn-pix2pix -f Dockerfile .
mkdir myfunc && cd myfunc
fn init --init-image=fndemo/stacks-fn-pix2pix
fn deploy --app myfn-app --create-app --local --verbose
fn invoke myfn-app myfunc 

