# Use a base image python
FROM python:3.12

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt

# Set up a virtual environment and activate
# python -m venv venv
# source venv/bin/activate

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY . .

# Expose FastAPI's default port
EXPOSE 8000

# Start the FastAPI app using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
