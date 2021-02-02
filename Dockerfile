FROM python:3
WORKDIR /flask_app
COPY . .
Run apt-get -y update
RUN pip install -r requirements.txt
CMD ["python", "web.py"]