#!/bin/bash

docker build -t fndemo/stacks-fn-py -f Dockerfile .
cd myfunc
fn init --init-image=fndemo/stacks-fn-py
fn deploy --app myfn-app --create-app --local
fn invoke myfn-app myfunc

