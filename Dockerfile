FROM python:3.8

WORKDIR /app

COPY ./requirements.txt ./

RUN pip install -r requirements.txt

RUN chmod +x ./entrypoint.sh

CMD ./entrypoint.sh
CMD ["sh", "-c", "tail -f /dev/null"]