FROM python:3.5-alpine AS app

WORKDIR /app
COPY source_code/ /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "server.py"]


FROM mysql:5.5 AS db

ENV MYSQL_DATABASE crud_flask
ENV MYSQL_USER dev
ENV MYSQL_PASSWORD dev
ENV MYSQL_RANDOM_ROOT_PASSWORD yes

COPY database/ /docker-entrypoint-initdb.d/
