# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /home/data

# Copy the text files and Python script into the container
COPY IF.txt /home/data/IF.txt
COPY AlwaysRememberUsThisWay.txt /home/data/AlwaysRememberUsThisWay.txt
COPY script.py /home/data/script.py

# Install any necessary Python dependencies (if required, but none for this case)
# RUN pip install -r requirements.txt  # Uncomment this if you need to install dependencies

# Set the script to execute when the container starts
CMD ["python", "/home/data/script.py"]
