FROM python:3.8-alpine

WORKDIR /app

COPY ./requirements.txt ./

RUN apk add -u gcc musl-dev
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY ./ ./

RUN chmod +x entrypoint.sh

CMD ./entrypoint.sh
CMD ["sh", "-c", "tail -f /dev/null"]