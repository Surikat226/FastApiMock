FROM python:3.12-slim

WORKDIR /app
 
COPY . .
# Помимо того, что скрипт скопируется в основную директорию, он уйдёт и в папку, указанную ниже. Надо подумать, как сделать деликатнее
COPY schema.sql /docker-entrypoint-initdb.d/

RUN pip install --no-cache-dir -r requirements.txt

# Здесь указал аддрес хоста как 0.0.0.0, чтобы можно было получить доступ к аппке с локалхоста
ENTRYPOINT [ "uvicorn", "main:app", "--host", "0.0.0.0" ]