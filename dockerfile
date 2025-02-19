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
