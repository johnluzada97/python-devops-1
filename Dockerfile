FROM python:3.12.2-slim

WORKDIR /app

COPY John-Luzada.py .

CMD ["python", "John-Luzada.py"]