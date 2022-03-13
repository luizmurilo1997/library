FROM ubuntu:18.04

ENV SECRET_KEY="django-insecure-7r=di4+vmwe0t=-yw@pwg(qx2$^4u3ag_ub)wtgsz16iy7k96n"

WORKDIR /code

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

COPY requirements.txt /code

COPY . /code

RUN pip3 install -r requirements.txt --no-cache-dir

CMD python3 manage.py runserver 8000