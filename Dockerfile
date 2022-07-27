FROM python:3.8-slim

WORKDIR /workspace

COPY requirements.txt requirements.txt
RUN apt-get update
RUN pip install -r requirements.txt
RUN pip install OpenNMT-py

COPY ./ /workspace

CMD ["bash", "run_server.sh"]
