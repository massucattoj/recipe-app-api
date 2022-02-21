# first line - the image that you're going to inherit your docker file from
FROM python:3.7-alpine
MAINTAINER  Massucatto Jean - Software Developer

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user