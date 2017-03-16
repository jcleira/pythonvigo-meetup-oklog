# Starting from the python base image
FROM python:3.4

# Install django system dependencies.
RUN apt-get update \
    && apt-get install -y --no-install-recommends postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Download the static binary from the oklog github distributions.
ADD https://github.com/oklog/oklog/releases/download/v0.2.0/oklog-0.2.0-linux-amd64 /usr/bin/oklog
RUN chmod +x /usr/bin/oklog

# Configure the Django app.
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .

# Expose and run the service fordwarding the stdout to oklog.
EXPOSE 8000
CMD python manage.py runserver 0.0.0.0:8000 | oklog forward 34.252.74.73
