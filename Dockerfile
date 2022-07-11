# syntax=docker/dockerfile:1

FROM python:3.8.13-slim-buster

WORKDIR /NER

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .
EXPOSE 5225
COPY app.py /home/app.py
ENTRYPOINT FLASK_APP=/home/app.py flask run --host=0.0.0.0
