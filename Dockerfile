# syntax=docker/dockerfile:1

FROM python:3.10-alpine

# poetry installation
RUN apk add --no-cache curl \
    && curl -sSL https://install.python-poetry.org | python3 -

ENV PYTHONUNBUFFERED=1
ENV DEBUG=False
ENV SECURE_DEFAULT='django-insecure-qz-n3-z4%@0l1d+e!%9cb=r=rb2)s&0v4ct8=@v%6lh0_8_16&'
ENV PATH="/root/.local/bin:$PATH"
WORKDIR /usr/src/app/

# COPY ./requirements.txt ./
# RUN pip install --no-cache-dir -r ./requirements.txt
COPY pyproject.toml poetry.lock* ./ ./requirements.txt ./
RUN poetry install --no-root --no-interaction && pip install --no-cache-dir -r ./requirements.txt
COPY ./ ./

EXPOSE 80
CMD [ "./entrypoint.sh" ]
