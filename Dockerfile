# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app
# Install ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*
# Copy the local directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir auto-editor

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME AutoEditor

# Run auto-editor when the container launches
CMD ["tail", "-f", "/dev/null"]
