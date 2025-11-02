# This is a simple Dockerfile for Python App

# Using official python image
FROM python:3.11-slim

# Set Working Directory
WORKDIR /app

# Copy dependencies first (for caching)
COPY requirements.txt .

# Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy Application Code
COPY . .

# Expose Application Port
EXPOSE 8080

# Command to run the app
CMD ["python", "app.py"]
