FROM ubuntu

WORKDIR /python_web_app

COPY dockerfile /python_web_app/
COPY requirments.txt /python_web_app/
COPY mysite /python_web_app/

RUN apt-get update &&\
    apt-get install -y python3 python3-pip &&\
    pip install -r requirments.txt &&\
    cd mysite

ENTRYPOINT ["python3"]

CMD ["manage.py", "runserver", "0.0.0.0:8000"]
