FROM python:3-alpine
LABEL maintainer="don@agilicus.com"

ENV FLASK_DEBUG=1
ENV FLASK_APP=app.py

WORKDIR /app

# Install from requirements first, and have
# separate COPY . line at end for rest. This allows
# docker caching of layers to avoid the 'pip' rebuild
# when we change a single python file
COPY requirements.txt .
RUN pip install -r requirements.txt

ENTRYPOINT ["/usr/local/bin/python", "-m", "flask", "run"]
COPY . /app
