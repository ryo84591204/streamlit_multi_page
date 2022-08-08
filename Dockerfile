FROM python:3.10.3

WORKDIR /usr/src/app
ADD requirements.txt .

RUN pip install -U pip \
    && pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8501
