Fn with DLRS and Python

Steps to reproduce

```bash
$ pwd
<clone path>/fn-sandbox/stacks-fn-py/

$ docker build -t fndemo/stacks-fn-py -f Dockerfile .

Step 1/4 : FROM alpine:latest
 ---> e7d92cdc71fe
Step 2/4 : COPY template template
 ---> Using cache
 ---> eaf2be747004
Step 3/4 : RUN tar -C template -cf init.tar .
 ---> Using cache
 ---> 739929b6c68a
Step 4/4 : CMD cat init.tar
 ---> Using cache
 ---> 1d0aab4c9840
Successfully built 1d0aab4c9840
Successfully tagged fndemo/stacks-fn-py:latest

$ mkdir myfunc && cd myfunc

$ fn init --init-image=fndemo/stacks-fn-py

Running init-image: fndemo/stacks-fn-rev
...
func.yaml created.

$ fn deploy --app myfn-app --create-app --local

$ fn invoke myfn-app myfunc

{"message":"Hello World"}
```
