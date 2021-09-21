FROM python:3.8-alpine
MAINTAINER Sandipan Dutta

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN mkdir /chicken_curry
RUN pip install -r requirements.txt
WORKDIR /chicken_curry
COPY ./chicken_curry /chicken_curry



