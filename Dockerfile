# Use the official Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip3.9 install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY src/app.py .

# Expose the port on which the Flask app will run (default is 5000)
EXPOSE 5000

# Set the command to run the Flask app
CMD ["python3.9", "app.py"]
