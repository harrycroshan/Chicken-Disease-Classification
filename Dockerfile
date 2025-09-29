FROM python:3.8-slim-bullseye

RUN pip install --no-cache-dir awscli
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]