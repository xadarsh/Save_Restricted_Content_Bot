FROM python:3.10.4-slim-buster

# ⚠️ Fix deprecated Buster repositories and update packages
RUN sed -i 's|http://deb.debian.org|http://archive.debian.org|g' /etc/apt/sources.list && \
    sed -i '/security.debian.org/s/^/#/' /etc/apt/sources.list && \
    apt-get update && apt-get upgrade -y

# ✅ Install necessary packages (deduplicated and grouped)
RUN apt-get install -y \
    git \
    curl \
    wget \
    python3-pip \
    bash \
    neofetch \
    ffmpeg \
    software-properties-common

# 📦 Copy the requirements file and install Python dependencies
COPY requirements.txt .
RUN pip3 install wheel
RUN pip3 install --no-cache-dir -U -r requirements.txt

# 📁 Set working directory
WORKDIR /app

# 🗂 Copy entire application code into container
COPY . .

# 🚀 Start the app
CMD flask run -h 0.0.0.0 -p 8000 & python3 -m aadi
