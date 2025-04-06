# Use the official Python 3.12 slim image
FROM python:3.12-slim

# Set working directory inside the container
WORKDIR /app

# Copy your project files into the container
COPY . /app

# Upgrade pip to latest version
RUN pip install --upgrade pip

# Install dependencies
RUN pip install -r requirements.txt

# Default command to run your app
CMD ["python", "app.py"]