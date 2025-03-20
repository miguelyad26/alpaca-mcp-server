FROM python:3.9-slim

WORKDIR /app
COPY . /app

RUN pip install alpaca-py httpx

RUN chmod +x alpaca_mcp_server.py

CMD ["python", "alpaca_mcp_server.py"]
