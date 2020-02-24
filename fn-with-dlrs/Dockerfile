FROM clearlinux/stacks-dlrs-oss:v0.5.0
WORKDIR /function
ADD func.py /function
ADD requirements.txt /function
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
#CMD /python/bin/fdk /function/func.py handler
ENTRYPOINT [ "/python/bin/fdk", "/function/func.py", "handler"]
