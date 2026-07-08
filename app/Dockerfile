FROM python:3.12-slim

LABEL maintainer="Janhavi Patil"
LABEL project="CloudDeploy Platform"

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PYTHONUNBUFFERED=1

EXPOSE 5000

CMD ["python", "app.py"]
