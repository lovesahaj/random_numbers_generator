FROM python:3.11.9-alpine3.19

ENV APP_NAME random_number_generator

WORKDIR /app

EXPOSE 7373

COPY requirements.txt .
COPY . .

RUN pip install --upgrade --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "7373"]
