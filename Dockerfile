FROM python:3.8-slim-buster
COPY ./app.py ./requirements.txt /app/
WORKDIR /app
RUN python3 -m pip install -r requirements.txt
EXPOSE 4000
CMD python3 -m flask run --host=0.0.0.0 --port=4000