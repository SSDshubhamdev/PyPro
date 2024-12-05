# Step 1: Use an official Python runtime as the base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements.txt file into the container at /app
COPY requirements.txt .

# Step 4: Install any dependencies from the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of the application code into the container
COPY . .

# Step 6: Expose port (optional, needed if you're running a web server)
EXPOSE 5000

# Step 7: Define the command to run the application
CMD ["python", "app/main.py"]