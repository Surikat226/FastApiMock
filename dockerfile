FROM python:3.12-slim

WORKDIR /app
 
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "uvicorn", "main:app", "port", "8000", "--host", "127.0.0.1" ]