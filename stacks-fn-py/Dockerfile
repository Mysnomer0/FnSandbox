FROM clearlinux/stacks-dlrs-oss:v0.5.0
RUN pip install fdk
WORKDIR workspace
COPY func.py .
ENTRYPOINT ["fdk", "func.py", "handler"]
