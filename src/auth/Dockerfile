FROM python:3.10-slim-bullseye

# Install required dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libmariadb-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip install --no-cache-dir --upgrade pip

WORKDIR /app

COPY ./requirements.txt /app

# Install Python dependencies
RUN pip install --no-cache-dir --requirement /app/requirements.txt

COPY . /app

EXPOSE 5000

CMD ["python3", "server.py"]
