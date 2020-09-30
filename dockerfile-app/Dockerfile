FROM python:3.5-alpine

WORKDIR /app
COPY /var/jenkins_home/workspace/teste/source_code/ /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "server.py"]
