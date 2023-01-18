FROM python:3.8-slim
WORKDIR /
# install python 
RUN apt update && \
    apt install --no-install-recommends -y build-essential gcc && \
    apt clean && rm -rf /var/lib/apt/lists/*

COPY requirements.txt requirements.txt
COPY main.py main.py

RUN pip install -r requirements.txt --no-cache-dir


ENTRYPOINT ["python", "-u", "main.py"]
