FROM python:3.9-alpine

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1
# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

ENV ROTATE_OPTIONS=""

# Install pip requirements
RUN python -m pip install rotate-backups

RUN mkdir /data

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
