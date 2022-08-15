FROM python:3.9-alpine

COPY requirements.txt /

RUN pip install -r requirements.txt

# copy files from local machine to docker image
COPY . .

CMD ["python","manage.py","runserver", "0:8000"]
