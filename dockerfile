<<<<<<< HEAD
# Stage 1: Build environment
FROM ubuntu AS ubu

WORKDIR /app

# Copy application files
COPY . /app

# Install necessary packages
RUN apt-get update && apt-get install -y python3 python3-pip

# Stage 2: Final image with distrless image of pythoin
FROM gcr.io/distroless/python3

# Copy built artifacts from previous stage
COPY --from=ubu /app /app

# Default command to run the application
CMD ["/app/app.py"]
=======
FROM ubuntu

WORKDIR /app

COPY requirements.txt /app/
COPY devops /app/
COPY dockerfile /app/

RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

SHELL ["/bin/bash", "-c"]

RUN python3 -m venv venv1 && \
source venv1/bin/activate && \
pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD source venv1/bin/activate && python3 manage.py runserver 0.0.0.0:8000
>>>>>>> master
