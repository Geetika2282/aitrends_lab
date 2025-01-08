# Using Python base image
FROM python:3.9-slim
# working directory
WORKDIR /app
# Copy thhe project files into container
COPY . /app
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Expose port 5000
EXPOSE 5000
# Run the application
CMD ["python", "app.py"]

