FROM python:3.8.10-slim-buster

LABEL maintainer="Mohamed Saad"

COPY ./techtrends /app
WORKDIR /app

RUN pip install --no-cache-dir  -r requirements.txt

EXPOSE 3111

RUN python init_db.py command

CMD [ "python", "app.py" ]