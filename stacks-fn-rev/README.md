Fn with DLRS and bash commands

Steps to reproduce

```bash
$ pwd
<clone path>/fn-sandbox/stacks-fn-rev/

$ docker build -t fndemo/stacks-fn-rev -f Dockerfile .

Sending build context to Docker daemon  18.94kB
Step 1/4 : FROM alpine:latest
 ---> e7d92cdc71fe
Step 2/4 : COPY template template
 ---> Using cache
 ---> 6c769d40fa87
Step 3/4 : RUN tar -C template -cf init.tar .
 ---> Using cache
 ---> 91b1a6f2f6e3
Step 4/4 : CMD cat init.tar
 ---> Using cache
 ---> a69fe33a078a
Successfully built a69fe33a078a
Successfully tagged fndemo/stacks-fn-rev:latest

$ mkdir myfunc && cd myfunc

$ fn init --init-image=fndemo/stacks-fn-rev

Running init-image: fndemo/stacks-fn-rev
...
func.yaml created.

$ fn deploy --app myfn-app --create-app --local

$ echo Hello | fn invoke myfn-app myfunc

olleH
```
