#!/bin/bash

docker build -t fndemo/stacks-fn-rev -f Dockerfile .
cd myfunc
fn init --init-image=fndemo/stacks-fn-rev
fn deploy --app myfn-app --create-app --local
echo "Hello World! !dlroW olleH" | fn invoke myfn-app myfunc

