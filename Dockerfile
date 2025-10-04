# Write the code for your Dockerfile here

# Step 1: Choose a base image
FROM python:3.9

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy requirements first (for better caching)
COPY requirements.txt .

# Step 4: Install Python dependencies
RUN pip install -r requirements.txt

# Step 5: Copy application code
COPY . .

# Step 6: Expose the port the app runs on
EXPOSE 8080

# Step 7: Define the command to run the application
CMD ["python", "app.py"]