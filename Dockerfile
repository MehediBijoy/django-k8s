FROM python:3.10

COPY requirements.txt /

RUN pip install -r requirements.txt

COPY . .

CMD ["python","manage.py","runserver", "0:8000"]
