FROM ubuntu AS build

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y python3 python3-pip

FROM gcr.io/distroless/python3

COPY --from=build /app

CMD ["sh", "-c", "python3 --version && python3 app.py"]
