FROM python:3.7.3-stretch

# Create a working directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install  --no-cache-dir --upgrade pip && \
    pip install  --no-cache-dir --trusted-host pypi.python.org -r requirements.txt
    
# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]
