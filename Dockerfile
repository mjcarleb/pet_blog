FROM python:3.7

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

LABEL maintainer="Mark Carlebach <markjcarlebach@gmail.com>"


#CMD python hello/app.py
CMD gunicorn -c gunicorn.py "hello.app:create_app()"

#docker run -p 5000:5000:0 -v /home/mjcarleb/HES/pet_blog:/app --name pet_blog pet_blog:0.2