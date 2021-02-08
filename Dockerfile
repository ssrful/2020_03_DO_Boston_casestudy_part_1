FROM python:3
WORKDIR /usr/src/app
COPY . .
RUN apt update && \
	apk upgrade && \
	apk add curl
RUN apt update && \
	apk upgrade && \
	apk add docker
RUN pip install -r requirements.txt
EXPOSE 9090
CMD ["web", "run"]