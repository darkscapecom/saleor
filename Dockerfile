# Use Python base image
FROM python:3.11-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r /app/requirements.txt

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "saleor.asgi:application", "-k", "uvicorn.workers.UvicornWorker"]
