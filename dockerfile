FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
EXPOSE 5000
CMD python ./services.py
