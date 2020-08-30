# CITES
- This repo is based almost entirely on these 4 online classes
    - Udemy class on Flask and Python (by Jose Portilla)
    - A Cloud Guru class on Docker Fundamentals (by Nick Janetakis)
    - A Cloud Guru class on EKS Basics (by Faye Ellis)
    - A Cloud Guru class on Kubernetes Deep Dive (by Nigel Poulton)

# Flask

This Flask application has 2 key differences from the demo app in the course:

- It uses the Flask application factory pattern
- It uses gunicorn as a proper app server (this is safe to use in production)

The `gunicorn.py` file contains a few config settings. `accesslog = '-'` ensures
that things get logged to STDOUT.

View all of [gunicorn's documentation](http://docs.gunicorn.org/en/latest/index.html).

# Usage

- From command line without docker $gunicorn -c gunicorn.py "hello.app:create_app()"
- As docker image on local machine
- Using kubernetes on cluster
