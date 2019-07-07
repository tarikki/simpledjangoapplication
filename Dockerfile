FROM python:3.7

RUN apt-get install bash
RUN apt-get update
RUN mkdir -p /app
WORKDIR /app

RUN apt -y install supervisor
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

ADD . /app/
CMD ["/app/deployment/docker_entry.sh"]
