FROM python:3.9

COPY requirements.txt .

#USER ndr

ENV PIP_ROOT_USER_ACTION=ignore

MAINTAINER ndr

RUN pip install --upgrade pip -r requirements.txt

ADD . /app

EXPOSE 8000

ENTRYPOINT python /app/app.py runserver 0.0.0.0:8000

# --user -v /etc/passwd:/etc/passwd:ro
