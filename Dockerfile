FROM python:3.10-slim

WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your code
COPY . .

# Expose the port if needed
EXPOSE 8000

# Start the MCP server
CMD ["python", "alpaca_mcp_server.py"]
