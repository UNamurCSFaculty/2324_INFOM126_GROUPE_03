# syntax=docker/dockerfile:1

FROM python:3-alpine

# poetry uinstallation
RUN apk add --no-cache curl \
    && curl -sSL https://install.python-poetry.org | python3 -

ENV PYTHONUNBUFFERED=1
ENV DEBUG=False

WORKDIR /usr/src/app/

# COPY ./requirements.txt ./
# RUN pip install --no-cache-dir -r ./requirements.txt
COPY pyproject.toml poetry.lock* ./
RUN poetry install --no-root --no-interaction

COPY ./ ./

EXPOSE 80
CMD [ "./entrypoint.sh" ]
