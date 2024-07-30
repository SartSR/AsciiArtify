FROM python:3.9.2
COPY server.py /server.py
ENTRYPOINT ["python3","-u", "server.py"]
EXPOSE 8000