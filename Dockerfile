# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the dashboard-site directory contents into the container at /app
COPY docs /app

# Make port 8008 available to the world outside this container
EXPOSE 8008

# Run Python's built-in HTTP server
CMD ["python3", "-m", "http.server", "--bind", "0.0.0.0", "8008"]