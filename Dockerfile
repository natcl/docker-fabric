FROM python:2

WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install rsync

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

CMD ["bash"]
