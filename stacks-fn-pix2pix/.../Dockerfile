FROM clearlinux/stacks-dlrs-oss:v0.5.0
RUN pip install fdk
WORKDIR workspace
COPY func.py .
COPY 0.jpg .
COPY requirements.txt .
COPY generator_model.h5 .
run pip install -r requirements.txt
ENTRYPOINT ["fdk", "func.py", "handler"]
