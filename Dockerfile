# Docker file for a simple Python Flask APP

# Using the latest python image
FROM python:3.11-slim

# Set Working Directory
WORKDIR /app

# Copy the dependencies
COPY requirements.txt .

# Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy Application Code
COPY . .

# Expose Application Port
EXPOSE 8080

# Command to run the application
CMD ["python", "app.py"]
