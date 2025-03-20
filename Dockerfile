FROM python:3.9-slim

WORKDIR /app
COPY . /app

RUN pip install alpaca-py httpx

RUN chmod +x mcp_alpaca.py

CMD ["python", "mcp_alpaca.py"]
