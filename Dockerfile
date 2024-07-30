FROM python:latest
WORKDIR /app
COPY server.py ./
ENTRYPOINT ["python3","-u", "server.py"]
EXPOSE 8000