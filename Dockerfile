# syntax=docker/dockerfile:1

FROM python:3-alpine

ENV PYTHONUNBUFFERED=1
ENV DEBUG=True


WORKDIR /usr/src/app/

COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r ./requirements.txt
COPY ./ ./

EXPOSE 80
CMD [ "./entrypoint.sh" ]
