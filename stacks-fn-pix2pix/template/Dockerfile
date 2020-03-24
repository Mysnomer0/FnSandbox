FROM clearlinux/stacks-dlrs-oss:v0.5.0
RUN pip install fdk
WORKDIR workspace
COPY func.py .
COPY infer.py .
COPY scripts scripts/
COPY requirements.txt .
COPY generator_model.h5 models/
RUN pip install -r requirements.txt
RUN touch __init__.py
RUN touch scripts/__init__.py
ENV PYTHONPATH=$PYTHONPATH:/workspace/:/workspace/scripts/
ENTRYPOINT ["fdk", "func.py", "handler"]
