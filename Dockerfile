FROM python:3.7

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .

LABEL maintainer="Mark Carlebach <markjcarlebach@gmail.com>"

EXPOSE 5000

#CMD python app.py
#CMD gunicorn -c gunicorn.py "puppycompanyblog.app:create_app()"
CMD gunicorn -c gunicorn.py "app:create_app()"


#docker run -p 5000:5000:0 -v /home/mjcarleb/HES/pet_blog:/app --name pet_blog pet_blog:0.2