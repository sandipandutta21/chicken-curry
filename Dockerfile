FROM python:3.8-alpine
MAINTAINER Sandipan Dutta

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r requirements.txt

RUN mkdir /chicken_curry
WORKDIR /chicken_curry
COPY ./chicken_curry /chicken_curry
RUN adduser -D user
RUN chmod -R 777 /chicken_curry
USER user



