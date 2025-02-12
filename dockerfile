FROM ubuntu

WORKDIR /app

COPY requirments.txt /app/
COPY mysite /app/
COPY dockerfile /app/

RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

SHELL ["/bin/bash", "-c"]

RUN python3 -m venv venv1 && \
source venv1/bin/activate && \
pip install --no-cache-dir -r requirments.txt

EXPOSE 8000

CMD source venv1/bin/activate && python3 manage.py runserver 127.0.0.1:8000
