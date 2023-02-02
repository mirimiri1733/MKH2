# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

RUN apt-get update
RUN apt-get install -y git

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

RUN pip3 install python-dotenv


COPY . .

CMD [ "python3", "organizerbot.py"]