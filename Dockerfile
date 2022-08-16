FROM python:3.10-alpine3.16

COPY requirements.txt /

RUN apk add --no-cache postgresql-libs && \
    apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev

RUN pip install -r requirements.txt

COPY . .

CMD ["gunicorn", "--bind", ":8000", "--workers", "3", "config.wsgi"]
