FROM python:3.12-slim

WORKDIR /app
 
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "uvicorn", "main:app", "--host", "0.0.0.0" ]