# Use an official base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code
COPY ./app /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 80

# Run the application
CMD ["python", "app.py"]
